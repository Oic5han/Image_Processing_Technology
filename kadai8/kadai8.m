% 二値化された画像の連結成分にラベルをつける


%% ----- 初期化 -----
clear;


%% ----- 画像の読み込み -----
original = imread('https://goo.gl/cYQkka');     % 原画像の読み込み
original = rgb2gray(original);                  % グレースケールに変換


%% ----- 原画像の表示 -----
figure(1);                                      % 図番号1
imagesc(original);                              % 原画像(original)の表示
colormap(gray);                                 % カラーマップをgrayに設定
colorbar;                                       % カラーバーの表示
axis image;                                     % 真の比率に設定


%% ----- ラベリング -----
% --- 二値化 ---
tone2 = original > 128;                         % 閾値128で二値化
figure(2);                                      % 図番号2
imagesc(tone2);                                 % 二値化した画像(tone2)の表示
colormap(gray);                                 % カラーマップをgrayに設定
colorbar;                                       % カラーバーの表示
axis image;                                     % 真の比率に設定
% --- ラベリング ---
tone2 = bwlabeln(tone2);                        % 関数bwlabelnを用いてラベリング
figure(3);                                      % 図番号3
imagesc(tone2);                                 % ラベリング済み画像(tone2)の表示
colormap(jet);                                  % カラーマップをjetに設定
colorbar;                                       % カラーバーの表示
axis image;                                     % 真の比率に設定


%% ----- 終了 -----
return;