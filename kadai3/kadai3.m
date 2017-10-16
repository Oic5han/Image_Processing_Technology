% 閾値処理
% 閾値を4パターン設定し表示する



% --- 初期化 ---
clear;

% --- 原画像の処理 ---
original = imread('https://goo.gl/oNKqej');     % 原画像の取得
original = rgb2gray(original);                  % グレースケールに変換
figure(1);                                      % 図番号1 → 画像
imagesc(original);                              % 画像の表示
colormap(gray);                                 % カラーマップをgrayに設定
colorbar;                                       % カラーバーの表示
axis image;                                     % 真の比率にする
figure(2);                                      % 図番号2 → ヒストグラム
histogram(original);                            % ヒストグラムの表示
pause;                                          % 一時停止

% --- 閾値64 ---
IMG64 = original > 64;                          % 輝度値が64以上の画素を1，その他を0に変換
figure(1);                                      % 図番号1 → 画像
imagesc(IMG64);                                 % IMG64の表示
colormap(gray);                                 % カラーマップをgrayに設定
colorbar;                                       % カラーバーの表示
axis image;                                     % 真の比率にする
figure(2);                                      % 図番号2 → ヒストグラム
histogram(IMG64);                               % ヒストグラムの表示
pause;                                          % 一時停止

% --- 閾値96 ---
IMG96 = original > 96;                          % 輝度値が96以上の画素を1，その他を0に変換
figure(1);                                      % 図番号1 → 画像
imagesc(IMG96);                                 % IMG96の表示
colormap(gray);                                 % カラーマップをgrayに設定
colorbar;                                       % カラーバーの表示
axis image;                                     % 真の比率にする
figure(2);                                      % 図番号2 → ヒストグラム
histogram(IMG96);                               % ヒストグラムの表示
pause;                                          % 一時停止

% --- 閾値128 ---
IMG128 = original > 128;                        % 輝度値が128以上の画素を1，その他を0に変換
figure(1);                                      % 図番号1 → 画像
imagesc(IMG128);                                % IMG128の表示
colormap(gray);                                 % カラーマップをgrayに設定
colorbar;                                       % カラーバーの表示
axis image;                                     % 真の比率にする
figure(2);                                      % 図番号2 → ヒストグラム
histogram(IMG128);                              % ヒストグラムの表示
pause;                                          % 一時停止

% --- 閾値192 ---
IMG192 = original > 192;                        % 輝度値が192以上の画素を1，その他を0に変換
figure(1);                                      % 図番号1 → 画像
imagesc(IMG192);                                % IMG192の表示
colormap(gray);                                 % カラーマップをgrayに設定
colorbar;                                       % カラーバーの表示
axis image;                                     % 真の比率にする
figure(2);                                      % 図番号2 → ヒストグラム
histogram(IMG192);                              % ヒストグラムの表示

return