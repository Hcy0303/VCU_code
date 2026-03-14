function pedalOpeningCurve(folderPath)
%% 配置ADC参数
adcResolution = 12;    % ADC分辨率（12位）
refVoltage = 5;        % 参考电压（5V）
adcMax = 2^adcResolution - 1; % 12位ADC理论最大值：4095

%% 数据输入与过滤
txtFiles = dir(fullfile(folderPath, '*.txt')); % 获取所有.txt文件
if isempty(txtFiles)
    warning('文件夹中没有.txt文件。');
    return;
end

% 目标CAN ID（根据实际报文调整，例如0x131）
targetID = '0x131'; 
timeList = [];          % 时间戳列表
pedal_volt_adc = [];    % 输入踏板电压的ADC原始值（大端解析）

for k = 1:length(txtFiles)
    filePath = fullfile(folderPath, txtFiles(k).name);
    rawData = fileread(filePath);
    allLines = splitlines(rawData);  % 按行分割文本
    
    for i = 1:length(allLines)
        lineStr = allLines{i};
        
        % 匹配目标CAN ID的行
        if contains(lineStr, targetID)
            % 提取十六进制数据段（格式：x| xx xx xx xx ... → 去空格）
            hexPart = extractAfter(lineStr, 'x| ');
            hexStr = strrep(hexPart, ' ', '');
            if length(hexStr) < 4  % 至少2字节（4位十六进制）
                continue;
            end
            
            % 提取时间戳（兼容微秒格式）
            timeStr = regexp(lineStr, '"([\d:.]+)"', 'tokens', 'once');
            if isempty(timeStr)
                continue;
            end
            dt = datetime(timeStr{1}, 'InputFormat', 'HH:mm:ss.SSSSSS');
            timestamp = datenum(dt) * 86400;
            timeList(end+1) = timestamp;
            
            % 解析踏板电压ADC原始值（大端字节序：高字节在前，低字节在后）
            voltHiByte = hexStr(1:2);  % 高字节
            voltLoByte = hexStr(3:4);  % 低字节
            hexToUint16 = @(hi, lo) uint16(hex2dec([hi lo])); % 大端拼接
            pedal_volt_adc_val = hexToUint16(voltHiByte, voltLoByte);
            
            % 存储ADC原始值
            pedal_volt_adc(end+1) = pedal_volt_adc_val;
        end
    end
end

%% 数据排序与校验
if isempty(timeList) || isempty(pedal_volt_adc)
    warning('未找到符合格式的 %s 报文，无法绘图。', targetID);
    return;
end
[timeList, sortIdx] = sort(timeList);
pedal_volt_adc = pedal_volt_adc(sortIdx);  % 按时间排序

%% 计算实际电压
pedal_volt = pedal_volt_adc * refVoltage / adcMax;  % 转换为实际电压(V)

%% 动态计算电压上下限（使用实际读取的最大/最小电压值）
volt_min = min(pedal_volt);  % 实际最小电压（对应开度0%）
volt_max = max(pedal_volt);  % 实际最大电压（对应开度100%）

% 避免上下限相等（防止除数为0）
if volt_max == volt_min
    volt_max = volt_min + 0.001;  % 微小偏移，确保计算有效
end

%% 计算踏板开度（基于实际电压范围）
pedalOpening = (pedal_volt - volt_min) / (volt_max - volt_min) * 100;  % 开度(%)

%% 相对时间（转换为毫秒）
relativeTime_ms = (timeList - timeList(1)) * 1000;

%% 可视化结果
figure('Position', [200 200 1200 800]);

% 1. 实际电压曲线
subplot(2,1,1);
plot(relativeTime_ms, pedal_volt, '-b', 'LineWidth', 1.2);
hold on;
plot(relativeTime_ms, ones(size(relativeTime_ms))*volt_min, '--r', 'LineWidth', 1);  % 实际最小电压
plot(relativeTime_ms, ones(size(relativeTime_ms))*volt_max, '--g', 'LineWidth', 1);  % 实际最大电压
xlabel('相对时间(ms)', 'FontSize', 10);
ylabel('实际电压(V)', 'FontSize', 10);
title(['踏板实际电压：范围 [' num2str(volt_min, 3) 'V, ' num2str(volt_max, 3) 'V]'], 'FontSize', 12);
legend('实际电压', '最小电压', '最大电压', 'Location', 'best');
grid on; box on;
hold off;

% 2. 踏板开度曲线（0%~100%）
subplot(2,1,2);
plot(relativeTime_ms, pedalOpening, '-r', 'LineWidth', 1.2);
xlabel('相对时间(ms)', 'FontSize', 10);
ylabel('踏板开度(%)', 'FontSize', 10);
title('踏板开度（基于实际电压范围计算）', 'FontSize', 12);
ylim([0, 100]);  % 开度范围固定0~100%
grid on; box on;

sgtitle('踏板实际电压→开度 动态分析（大端字节序）', 'FontSize', 14);
end