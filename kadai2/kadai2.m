% --- 初期化 ---
clear;

% --- 原画像の取得と表示 ---
original = imread('https://goo.gl/aGYCsn');     % 原画像の取得
original = rgb2gray(original);                  % 原画像をグレースケールに変換
imagesc(original);                              % グレースケールの画像を表示
colormap(gray);                                 % カラーマップをグレーに設定
colorbar;                                       % カラーバーの表示 
axis image;                                     % 座標軸の縦横比を真の比率に変更
pause;                                          % 一時停止

% --- 2階調画像の生成 ---
IMG_2tone = original>128;                       % "0"と"1"の配列に変換 → 2階調
imagesc(IMG_2tone);                             % IMGの表示
colormap(gray);                                 % カラーマップをグレーに設定
colorbar;                                       % カラーバーの表示
axis image;                                     % 座標軸の縦横比を真の比率に変更
pause;                                          % 一時停止

% --- 4階調画像の生成 ---
IMG0 = original>64;                             % 最も濃い黒(1/4)
IMG1 = original>128;                            % 次に濃い(2/4)
IMG2 = original>192;                            % その次に濃い(3/4)
IMG_4tone = IMG0+IMG1+IMG2;                     % 全て足し合わせる → 4階調
imagesc(IMG_4tone);                             % IMG_4toneの表示
colormap(gray);                                 % カラーマップをグレーに設定
colorbar;                                       % カラーバーの表示
axis image;                                     % 座標軸の縦横比を真の比率に変更
pause;                                          % 一時停止

% --- 8階調画像の作成 ---
IMG0 = original>32;                             % 1/8
IMG1 = original>64;                             % 2/8
IMG2 = original>96;                             % 3/8
IMG3 = original>128;                            % 4/8
IMG4 = original>160;                            % 5/8
IMG5 = original>192;                            % 6/8
IMG6 = original>224;                            % 7/8
IMG_8tone = IMG0+IMG1+IMG2+IMG3+IMG4+IMG5+IMG6; % 全て足し合わせる → 8階調
imagesc(IMG_8tone);                             % IMG_8toneの表示
colormap(gray);                                 % カラーマップをグレーに設定
colorbar;                                       % カラーバーの表示
axis image;                                     % 座標軸の縦横比を真の比率に変更

return