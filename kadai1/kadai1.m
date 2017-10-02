% --- 初期化 ---
clear

% --- 原画像の読み込みと表示 ---
original = imread('https://goo.gl/aGYCsn');   % GitHub上の標準画像のURL
imagesc(original); axis image;                % 画像の表示
pause;                                        % 一時停止

% --- 縮小と拡大を行い画像を荒くしていく ---
% ピクセル数1/2
IMG = imresize(original,0.5);   % 画像を0.5倍に縮小
IMG2 = imresize(IMG,2,'box');   % 画像を2倍に拡大
imagesc(IMG2); axis image;      % 画像の表示
pause;                          % 一時停止

% ピクセル数1/4
IMG = imresize(IMG,0.5);        % 画像を0.5倍に縮小
IMG2 = imresize(IMG,4,'box');   % 画像を4倍に拡大
imagesc(IMG2); axis image;      % 画像の表示
pause;                          % 一時停止

% ピクセル数1/8
IMG = imresize(IMG,0.5);        % 画像を0.5倍に縮小
IMG2 = imresize(IMG,8,'box');   % 画像を8倍に拡大
imagesc(IMG2); axis image;      % 画像の表示
pause;                          % 一時停止

% ピクセル数1/16
IMG = imresize(IMG,0.5);        % 画像を0.5倍に縮小
IMG2 = imresize(IMG,16,'box');  % 画像を16倍に拡大
imagesc(IMG2); axis image;      % 画像の表示
pause;                          % 一時停止

% ピクセル数1/32
IMG = imresize(IMG,0.5);        % 画像を0.5倍に縮小
IMG2 = imresize(IMG,32,'box');  % 画像を32倍に拡大
imagesc(IMG2); axis image;      % 画像の表示


return
