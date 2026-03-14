function accelerationAnalysis(folderPath)
%% 数据输入与过滤
txtFiles = dir(fullfile(folderPath, '*.txt')); % 获取所有.txt文件
if isempty(txtFiles)
    warning('文件夹中没有.txt文件。');
    return;
end

% 目标CAN ID和数据头标识（前两位为0x55 0x51）
targetID = '0x050'; 
headerBytes = '5551'; % 前两位固定为55 51（十六进制字符串）
timeList = [];        % 时间戳列表（秒级，含毫秒精度）
axData = [];          % X轴加速度数据（G）
ayData = [];          % Y轴加速度数据（G）
azData = [];          % Z轴加速度数据（G）

for k = 1:length(txtFiles)
    filePath = fullfile(folderPath, txtFiles(k).name);
    rawData = fileread(filePath);
    allLines = splitlines(rawData);  % 按行分割文本
    
    for i = 1:length(allLines)
        lineStr = allLines{i};
        
        % 检查是否包含目标ID、有效数据标识，且前两位为55 51
        if contains(lineStr, targetID) && contains(lineStr, 'x| ')
            % 提取十六进制数据段（去除空格）
            hexStr = strrep(extractAfter(lineStr, 'x| '), ' ', '');
            % 检查数据头和长度
            if length(hexStr) < 16 || ~strcmp(hexStr(1:4), headerBytes)
                continue;
            end
            
            % 简化时间戳转换（兼容各版本，秒级精度含毫秒）
            timeStr = regexp(lineStr, '"([\d:.]+)"', 'tokens', 'once');
            if isempty(timeStr)
                continue;
            end
            % 直接转换为当天秒数（含毫秒：如12:34:56.789 → 12*3600+34*60+56.789）
            timestamp = datenum(timeStr{1}, 'HH:MM:SS.FFF') * 86400;
            timeList(end+1) = timestamp;
            
            % 解析加速度数据（Intel格式：低位在前）
            hexToInt16 = @(lo, hi) int16(hex2dec([hi lo])); % 低位在前拼接
            
            % X轴（3-4字节）
            axLoByte = hexStr(5:6);
            axHiByte = hexStr(7:8);
            axRaw = hexToInt16(axLoByte, axHiByte);
            axVal = (axRaw / 32768) * 1.6;  % 转换为G（1G≈9.8m/s²）
            
            % Y轴（5-6字节）
            ayLoByte = hexStr(9:10);
            ayHiByte = hexStr(11:12);
            ayRaw = hexToInt16(ayLoByte, ayHiByte);
            ayVal = (ayRaw / 32768) * 1.6;
            
            % Z轴（7-8字节）
            azLoByte = hexStr(13:14);
            azHiByte = hexStr(15:16);
            azRaw = hexToInt16(azLoByte, azHiByte);
            azVal = (azRaw / 32768) * 1.6;
            
            % 追加数据
            axData(end+1) = axVal;
            ayData(end+1) = ayVal;
            azData(end+1) = azVal;
        end
    end
end

%% 数据排序与校验
if isempty(timeList)
    warning('未找到符合格式（前两位55 51，Intel格式）的 %s 报文，无法绘图。', targetID);
    return;
end
[timeList, sortIdx] = sort(timeList);
axData = axData(sortIdx);
ayData = ayData(sortIdx);
azData = azData(sortIdx);

%% 计算相对时间（秒级，用于积分）
relativeTime_s = timeList - timeList(1);  % 相对时间（秒），精度更高

%% 计算速度变化（核心：加速度积分）
% 1. 转换加速度单位：G → m/s²（1G≈9.80665 m/s²）
ax_mps2 = axData * 9.80665;  % X轴加速度（m/s²）
ay_mps2 = ayData * 9.80665;  % Y轴加速度（m/s²）
az_mps2 = azData * 9.80665;  % Z轴加速度（m/s²）

% 2. 计算时间间隔（Δt，秒）
dt = diff(relativeTime_s);  % 相邻两个采样点的时间差
dt = [dt(1); dt];  % 第一个点的Δt用第二个点的Δt近似（避免长度不匹配）

% 3. 积分计算速度（v = v0 + ∫a·dt，假设初始速度v0=0）
vxData = zeros(size(ax_mps2));  % X轴速度（m/s）
vyData = zeros(size(ay_mps2));  % Y轴速度（m/s）
vzData = zeros(size(az_mps2));  % Z轴速度（m/s）

for i = 2:length(vxData)
    vxData(i) = vxData(i-1) + ax_mps2(i) * dt(i);  % 累积积分
    vyData(i) = vyData(i-1) + ay_mps2(i) * dt(i);
    vzData(i) = vzData(i-1) + az_mps2(i) * dt(i);
end

%% 相对时间（毫秒级，用于绘图）
relativeTime_ms = relativeTime_s * 1000;  % 秒 → 毫秒

%% 可视化（加速度+速度曲线）
figure('Position', [200 200 1200 1200]);

% 第1行：X轴加速度与速度
subplot(3,2,1);
plot(relativeTime_ms, axData, '-r', 'LineWidth', 1.2);
xlabel('相对时间(ms)', 'FontSize', 10);
ylabel('X轴加速度 (G)', 'FontSize', 10);
title('X轴加速度', 'FontSize', 12);
grid on; box on;

subplot(3,2,2);
plot(relativeTime_ms, vxData, '-m', 'LineWidth', 1.2);
xlabel('相对时间(ms)', 'FontSize', 10);
ylabel('X轴速度 (m/s)', 'FontSize', 10);
title('X轴速度（积分结果）', 'FontSize', 12);
grid on; box on;

% 第2行：Y轴加速度与速度
subplot(3,2,3);
plot(relativeTime_ms, ayData, '-b', 'LineWidth', 1.2);
xlabel('相对时间(ms)', 'FontSize', 10);
ylabel('Y轴加速度 (G)', 'FontSize', 10);
title('Y轴加速度', 'FontSize', 12);
grid on; box on;

subplot(3,2,4);
plot(relativeTime_ms, vyData, '-c', 'LineWidth', 1.2);
xlabel('相对时间(ms)', 'FontSize', 10);
ylabel('Y轴速度 (m/s)', 'FontSize', 10);
title('Y轴速度（积分结果）', 'FontSize', 12);
grid on; box on;

% 第3行：Z轴加速度与速度
subplot(3,2,5);
plot(relativeTime_ms, azData, '-g', 'LineWidth', 1.2);
xlabel('相对时间(ms)', 'FontSize', 10);
ylabel('Z轴加速度 (G)', 'FontSize', 10);
title('Z轴加速度', 'FontSize', 12);
grid on; box on;

subplot(3,2,6);
plot(relativeTime_ms, vzData, '-k', 'LineWidth', 1.2);
xlabel(['相对时间(ms) → 起始于 ' + datestr(timeList(1)/86400, 'HH:MM:SS.FFF')], 'FontSize', 10);
ylabel('Z轴速度 (m/s)', 'FontSize', 10);
title('Z轴速度（积分结果）', 'FontSize', 12);
grid on; box on;

sgtitle('加速度与速度变化曲线（X/Y/Z轴）', 'FontSize', 14);
end