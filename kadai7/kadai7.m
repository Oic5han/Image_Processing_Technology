% 画素のダイナミックレンジを0から255にする



%% ----- 初期化 -----
clear;


%% ----- 画像の読み込み -----
original = imread('https://goo.gl/cYQkka');     % 原画像の取得
original = rgb2gray(original);                  % グレースケールに変換


%% ----- 原画像に関する表示 -----
% --- 原画像 ---
figure(1);                                      % 図番号1
imagesc(original);                              % 原画像の表示
colormap(gray);                                 % カラーマップをgrayに設定
colorbar;                                       % カラーバーの表示
axis image;                                     % 真の比率に変更

% --- 原画像のヒストグラム ---
figure(2);                                      % 図番号2
imhist(original);                               % ヒストグラムの表示


%% ----- ダイナミックレンジの拡大 -----
% --- ダイナミックレンジの拡大 ---
original = double(original);                    % 行列originalの要素をdouble型に変換
mn = min(original(:));                          % 濃度値の最小値を算出
mx = max(original(:));                          % 濃度値の最大値を算出
original = (original-mn)/(mx-mn)*255;           % ダイナミックレンジの拡大

% --- 拡大後の画像の表示 ---
figure(3);                                      % 図番号3
imagesc(original);                              % 拡大後のoriginalの表示
colormap(gray);                                 % カラーマップをgrayに設定
colorbar;                                       % カラーバーの表示
axis image;                                     % 真の比率に変更
original = uint8(original);                     % 256階調にする

% --- 拡大後のヒストグラムの表示
figure(4);                                      % 図番号4
imhist(original);                               % 濃度ヒストグラムを生成、表示


%% ----- 終了 -----
return