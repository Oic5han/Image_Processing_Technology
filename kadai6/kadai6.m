% ディザ法による2値化



% --- 初期化 ---
clear;


% --- 画像の読み込み ---
original = imread('https://goo.gl/oNKqej');     % 原画像の取得
original = rgb2gray(original);                  % グレースケールに変換


% --- 原画像の表示 ---
figure(1);                                      % 図番号1
imagesc(original);                              % 原画像の表示
colormap(gray);                                 % カラーマップをgrayに設定
colorbar;                                       % カラーバーの表示
axis image;                                     % 真の比率に変更


% --- 閾値128で2値化 ---
thr128 = original > 128;                        % 閾値128を境に"1"と"0"に変換
figure(2);                                      % 図番号2
imagesc(thr128);                                % 画像の表示
colormap(gray);                                 % カラーマップをgrayに設定
colorbar;                                       % カラーバーの表示
axis image;                                     % 真の比率に変更


% --- ディザ法で2値化 ---
dit = dither(original);                         % ディザ法の適用
figure(3);                                      % 図番号3
imagesc(dit);                                   % 画像の表示
colormap(gray);                                 % カラーマップをgrayに設定
colorbar;                                       % カラーバーの表示
axis image;                                     % 真の比率に変更


return