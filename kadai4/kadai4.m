% 画像のヒストグラム
% 画素の濃度ヒストグラムを生成する



% --- 初期化 ---
clear;


% --- 原画像の設定 ---
original = imread('https://goo.gl/oNKqej');     % 原画像の取得
original = rgb2gray(original);                  % グレースケールに変換

% --- 表示 ---
figure(1);                                      % 図番号1 → 画像
imagesc(original);                              % 画像の表示
colormap(gray);                                 % カラーマップをgrayに設定
colorbar;                                       % カラーバーの表示
axis image;                                     % 真の比率にする

figure(2);                                      % 図番号2 → ヒストグラム
imhist(original);                               % ヒストグラム(imhist)の表示

figure(3);                                      % 図番号3 → ヒストグラム
histogram(original);                            % ヒストグラム(histogram)の表示


return