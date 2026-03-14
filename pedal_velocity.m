function pedal_velocity(folderPath)
%% 数据输入与过滤
txtFiles = dir(fullfile(folderPath, '*.txt')); % 获取所有.txt文件
if isempty(txtFiles)
    warning('文件夹中没有.txt文件。');
    return;
end

% 目标CAN ID（文件中是0x134）
targetID = '0x134'; 
timeList = [];        % 时间戳列表（秒级，含微秒精度）
pedalPercent = [];   % 踏板开度数据
wheelVelocity = [];  % 轮速数据

for k = 1:length(txtFiles)
    filePath = fullfile(folderPath, txtFiles(k).name);
    rawData = fileread(filePath);
    allLines = splitlines(rawData);  % 按行分割文本
    
    for i = 1:length(allLines)
        lineStr = allLines{i};
        
        % 匹配包含目标CAN ID的行
        if contains(lineStr, targetID)
            % 提取十六进制数据段（格式：x| 00 00 00 00 → 去空格）
            hexPart = extractAfter(lineStr, 'x| ');
            hexStr = strrep(hexPart, ' ', '');
            if length(hexStr) < 8  % 确保4字节（8位十六进制）
                continue;
            end
            
            % 提取时间戳（格式："17:23:40.057707"）
            timeStr = regexp(lineStr, '"([\d:.]+)"', 'tokens', 'once');
            if isempty(timeStr)
                continue;
            end
            dt = datetime(timeStr{1}, 'InputFormat', 'HH:mm:ss.SSSSSS');
            timestamp = datenum(dt) * 86400;
            timeList(end+1) = timestamp;
            
            % 解析数据（Motorola大端格式）
            hexToUint16 = @(hi, lo) uint16(hex2dec([hi lo]));
            
            % 踏板开度（字节3和字节2）
            pedelHiByte = hexStr(7:8);
            pedelLoByte = hexStr(5:6);
            pedelRaw = hexToUint16(pedelHiByte, pedelLoByte);
            pedalPercent(end+1) = pedelRaw * 1 + 0;  % 调整因子和偏移量
            
            % 轮速（字节1和字节0）
            wheelHiByte = hexStr(3:4);
            wheelLoByte = hexStr(1:2);
            wheelRaw = hexToUint16(wheelHiByte, wheelLoByte);
            wheelVelocity(end+1) = wheelRaw * 1 + 0;  % 调整因子和偏移量
        end
    end
end

%% 数据排序与校验
if isempty(timeList)
    warning('未找到符合格式的 %s 报文，无法绘图。', targetID);
    return;
end
[timeList, sortIdx] = sort(timeList);
pedalPercent = pedalPercent(sortIdx);
wheelVelocity = wheelVelocity(sortIdx);

%% 相对时间（转换为毫秒）
relativeTime_ms = (timeList - timeList(1)) * 1000;

%% 同一图上绘制两条曲线（共享X轴和Y轴）
figure('Position', [200 200 1200 600]);

% 绘制踏板开度曲线（红色）
plot(relativeTime_ms, pedalPercent, '-r', 'LineWidth', 1.2);
hold on;  % 保持当前图，继续绘制轮速

% 绘制轮速曲线（蓝色）
plot(relativeTime_ms, wheelVelocity, '-b', 'LineWidth', 1.2);

% 坐标轴与标题设置
xlabel('相对时间(ms)', 'FontSize', 10);
ylabel('数值', 'FontSize', 10);  % 统一Y轴标签（若单位不同可注明）
title('踏板开度与轮速随时间变化曲线', 'FontSize', 14);
legend('踏板开度', '轮速', 'Location', 'best', 'FontSize', 10);  % 图例区分
grid on;
box on;
hold off;  % 结束绘图保持


% 目标CAN ID（轮速所在报文：0x134）
targetID = '0x134'; 
timeList = [];        % 时间戳列表（秒级，含微秒精度）
wheelVelocity = [];  % 轮速数据

for k = 1:length(txtFiles)
    filePath = fullfile(folderPath, txtFiles(k).name);
    rawData = fileread(filePath);
    allLines = splitlines(rawData);  % 按行分割文本
    
    for i = 1:length(allLines)
        lineStr = allLines{i};
        
        % 匹配包含目标CAN ID的行
        if contains(lineStr, targetID)
            % 提取十六进制数据段（格式：x| 00 00 00 00 → 去空格）
            hexPart = extractAfter(lineStr, 'x| ');
            hexStr = strrep(hexPart, ' ', '');
            if length(hexStr) < 8  % 确保4字节（8位十六进制）
                continue;
            end
            
            % 提取时间戳（格式："17:23:40.057707"）
            timeStr = regexp(lineStr, '"([\d:.]+)"', 'tokens', 'once');
            if isempty(timeStr)
                continue;
            end
            dt = datetime(timeStr{1}, 'InputFormat', 'HH:mm:ss.SSSSSS');
            timestamp = datenum(dt) * 86400;
            timeList(end+1) = timestamp;
            
            % 解析数据（Motorola大端格式）
            hexToUint16 = @(hi, lo) uint16(hex2dec([hi lo]));
            
            % 仅解析轮速（字节1和字节0）
            wheelHiByte = hexStr(3:4);  % 高字节
            wheelLoByte = hexStr(1:2);  % 低字节
            wheelRaw = hexToUint16(wheelHiByte, wheelLoByte);
            wheelVelocity(end+1) = wheelRaw * 1 + 0;  % 调整因子和偏移量（根据实际定义修改）
        end
    end
end

%% 数据排序与校验
if isempty(timeList) || isempty(wheelVelocity)
    warning('未找到符合格式的 %s 报文（轮速数据），无法绘图。', targetID);
    return;
end
[timeList, sortIdx] = sort(timeList);
wheelVelocity = wheelVelocity(sortIdx);  % 按时间排序

%% 相对时间（转换为毫秒）
relativeTime_ms = (timeList - timeList(1)) * 1000;

%% 绘制轮速曲线
figure('Position', [200 200 1200 600]);

plot(relativeTime_ms, wheelVelocity, '-b', 'LineWidth', 1.2);

% 坐标轴与标题设置
xlabel('相对时间(ms)', 'FontSize', 10);
ylabel('轮速', 'FontSize', 10);  % 可根据实际单位修改（如km/h、r/min）
title('轮速随时间变化曲线', 'FontSize', 14);
grid on;
box on;
end
end