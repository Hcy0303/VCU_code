function baterry_volt(folderPath)
%% 数据输入与过滤
txtFiles = dir(fullfile(folderPath, '*.txt')); % 获取所有.txt文件
if isempty(txtFiles)
    warning('文件夹中没有.txt文件。');
    return;
end

targetID = '0x124'; % 目标CAN ID
timeList = [];      % 时间戳列表
currentData = [];   % 电流数据列表（A）
voltageData = [];   % 电压数据列表（V）
powerData = [];     % 功率数据列表（kW）

for k = 1:length(txtFiles)
    filePath = fullfile(folderPath, txtFiles(k).name);
    rawData = fileread(filePath);
    allLines = splitlines(rawData);  % 按行分割文本
    
    for i = 1:length(allLines)
        lineStr = allLines{i};
        
        % 检查是否包含目标ID和有效数据标识
        if contains(lineStr, targetID) && contains(lineStr, 'x| ')
            % 提取时间戳（格式如："12:34:56.789"）
            timeStr = regexp(lineStr, '"([\d:.]+)"', 'tokens', 'once');
            if isempty(timeStr)
                continue;  % 跳过无时间戳的行
            end
            % 转换为秒级时间戳（相对于当天0点）
            timestamp = datenum(timeStr{1}, 'HH:MM:SS.FFF') * 86400;
            
            % 提取十六进制数据段（去除空格）
            hexStr = strrep(extractAfter(lineStr, 'x| '), ' ', '');
            % 至少需要6字节数据（12个十六进制字符，确保所有字段完整）
            if length(hexStr) < 12
                warning('文件 %s 第%d行数据长度不足: %s', txtFiles(k).name, i, hexStr);
                continue;
            end
            
            % 解析摩托罗拉格式（大端模式）
            hexToInt16 = @(hi, lo) int16(hex2dec([hi lo]));    % 有符号16位整数
            hexToUInt16 = @(hi, lo) uint16(hex2dec([hi lo]));  % 无符号16位整数（根据实际类型选择）
            
            % 1. 电流解析（第1、2字节）
            currentHiByte = hexStr(1:2);     % 电流高字节（第1字节）
            currentLoByte = hexStr(3:4);     % 电流低字节（第2字节）
            currentRaw = hexToInt16(currentHiByte, currentLoByte);  % 假设为有符号，按需修改
            currentFactor = 0.1;  % 缩放系数（根据表格填写）
            currentOffset = -1000;% 偏移量（根据表格填写）
            currentVal = double(currentRaw) * currentFactor + currentOffset;  % 电流(A)
            
            % 2. 电压解析（第3、4字节）
            voltageHiByte = hexStr(5:6);     % 电压高字节（第3字节）
            voltageLoByte = hexStr(7:8);     % 电压低字节（第4字节）
            voltageRaw = hexToUInt16(voltageHiByte, voltageLoByte);  % 假设为无符号，按需修改
            voltageFactor = 0.1;  % 缩放系数（根据表格填写）
            voltageOffset = 0;    % 偏移量（根据表格填写）
            voltageVal = double(voltageRaw) * voltageFactor + voltageOffset;  % 电压(V)
            
            % 3. 功率解析（第5、6字节）
            powerHiByte = hexStr(9:10);      % 功率高字节（第5字节）
            powerLoByte = hexStr(11:12);     % 功率低字节（第6字节）
            powerRaw = hexToInt16(powerHiByte, powerLoByte);  % 有符号（根据表格）
            powerFactor = 1;      % 缩放系数（根据表格填写）
            powerOffset = 0;      % 偏移量（根据表格填写）
            powerVal = double(powerRaw) * powerFactor + powerOffset;  % 功率(kW)
            
            % 限制最大功率为80kW
            powerVal = min(powerVal, 80);
            
            % 追加数据到列表
            timeList(end+1) = timestamp;
            currentData(end+1) = currentVal;
            voltageData(end+1) = voltageVal;
            powerData(end+1) = powerVal;
        end
    end
end

%% 数据排序与校验
if isempty(timeList)
    warning('未找到有效的 %s 报文，无法绘图。', targetID);
    return;
end

% 按时间戳排序（确保数据时序正确）
[timeList, sortIdx] = sort(timeList);
currentData = currentData(sortIdx);
voltageData = voltageData(sortIdx);
powerData = powerData(sortIdx);

%% 数据可视化
figure('Position', [200 200 1200 1000]);

% 子图1：电流曲线（1-2字节）
subplot(3,1,1);
plot(timeList - timeList(1), currentData, '-r', 'LineWidth', 1.2);
xlabel('相对时间(s)', 'FontSize', 10);
ylabel('电流 (A)', 'FontSize', 10);
title('电流曲线（1-2字节）', 'FontSize', 12);
grid on; box on;

% 子图2：电压曲线（3-4字节）
subplot(3,1,2);
plot(timeList - timeList(1), voltageData, '-b', 'LineWidth', 1.2);
xlabel('相对时间(s)', 'FontSize', 10);
ylabel('电压 (V)', 'FontSize', 10);
title('电压曲线（3-4字节）', 'FontSize', 12);
grid on; box on;

% 子图3：功率曲线（5-6字节，限制最大80kW）
subplot(3,1,3);
plot(timeList - timeList(1), powerData, '-g', 'LineWidth', 1.2); hold on;
yline(80, 'r--', '最大80kW', 'LineWidth', 1);  % 标注最大限制线
xlabel(['相对时间(s) → 起始于 ' + datestr(timeList(1)/86400, 'HH:MM:SS')], 'FontSize', 10);
ylabel('功率 (kW)', 'FontSize', 10);
title('功率曲线（5-6字节）', 'FontSize', 12);
legend('功率', '最大限制', 'Location', 'best');
ylim([0, 85]);  % Y轴范围略大于最大值
grid on; box on;

sgtitle('CAN信号分析（电流/电压/功率）', 'FontSize', 14);
end