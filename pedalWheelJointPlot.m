function pedalWheelJointPlot(folderPath)
% 绘制指定文件夹中CAN报文(0x134)的踏板开度与轮速同步曲线
% 输入: folderPath - 存储CAN数据txt文件的文件夹路径

%% 初始化参数与变量
targetCANID = '0x134';  % 目标CAN ID
timeStamp   = [];       % 时间戳数组
pedalData   = [];       % 踏板开度原始数据
wheelData   = [];       % 轮速原始数据

%% 读取并解析文件
% 获取文件夹中所有txt文件
txtFiles = dir(fullfile(folderPath, '*.txt'));
if isempty(txtFiles)
    warning('未在指定路径找到txt文件: %s', folderPath);
    return;
end

% 循环处理每个文件
for fileIdx = 1:length(txtFiles)
    % 构建文件完整路径
    currentFile = fullfile(folderPath, txtFiles(fileIdx).name);
    
    % 读取文件内容并按行分割
    fileContent = fileread(currentFile);
    allLines = splitlines(fileContent);
    
    % 解析每行数据
    for lineIdx = 1:length(allLines)
        lineText = allLines{lineIdx};
        
        % 筛选包含目标CAN ID的行
        if contains(lineText, targetCANID)
            % 提取时间戳
            timeMatch = regexp(lineText, '"(\d+:\d+:\d+\.\d+)"', 'tokens');
            if isempty(timeMatch)
                continue;  % 跳过无时间戳的行
            end
            timeStr = timeMatch{1}{1};
            timeVal = datetime(timeStr, 'InputFormat', 'HH:mm:ss.SSSSSS');
            timeStamp(end+1) = datenum(timeVal) * 86400;  % 转换为秒
            
            % 提取并处理十六进制数据段
            hexSegment = extractAfter(lineText, 'x| ');
            hexClean = strrep(hexSegment, ' ', '');  % 去除空格
            if length(hexClean) < 8  % 确保至少4字节数据
                continue;
            end
            
            % 解析踏板开度(字节3+字节2，Motorola大端)
            pedalHex = [hexClean(7:8), hexClean(5:6)];  % 高字节+低字节
            pedalRaw = hex2dec(pedalHex);
            pedalData(end+1) = pedalRaw;
            
            % 解析轮速(字节1+字节0，Motorola大端)
            wheelHex = [hexClean(3:4), hexClean(1:2)];  % 高字节+低字节
            wheelRaw = hex2dec(wheelHex);
            wheelData(end+1) = wheelRaw;
        end
    end
end

%% 数据校验与排序
if length(timeStamp) ~= length(pedalData) || length(timeStamp) ~= length(wheelData)
    warning('数据长度不匹配，可能存在解析错误');
    return;
end
if isempty(timeStamp)
    warning('未找到包含 %s 的有效数据', targetCANID);
    return;
end

% 按时间戳排序
[timeStamp, sortIdx] = sort(timeStamp);
pedalData = pedalData(sortIdx);
wheelData = wheelData(sortIdx);

%% 计算相对时间(毫秒)
relativeTime = (timeStamp - timeStamp(1)) * 1000;

%% 绘制双Y轴曲线
figure('Position', [100 100 1200 600]);

% 左侧Y轴：踏板开度
ax1 = gca;
plot(ax1, relativeTime, pedalData, 'r-', 'LineWidth', 1.2);
ax1.YColor = 'r';
ylabel(ax1, '踏板开度', 'Color', 'r', 'FontSize', 11);
xlabel('相对时间 (ms)', 'FontSize', 11);
title('踏板开度与轮速同步曲线', 'FontSize', 14);
grid on;
box on;
hold on;

% 右侧Y轴：轮速
ax2 = axes('Parent', gcf, 'Position', ax1.Position, ...
    'YAxisLocation', 'right', 'Color', 'none');
plot(ax2, relativeTime, wheelData, 'b-', 'LineWidth', 1.2);
ax2.YColor = 'b';
ylabel(ax2, '轮速', 'Color', 'b', 'FontSize', 11);
ax2.XTick = [];  % 隐藏右侧X轴刻度
xlim(ax2, xlim(ax1));  % 对齐X轴范围

% 添加图例
legend([ax1.Children, ax2.Children], '踏板开度', '轮速', ...
    'Location', 'best', 'FontSize', 10);
hold off;

end