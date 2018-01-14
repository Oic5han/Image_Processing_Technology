% メディアンフィルターを適用し，ノイズ除去を体験する


%% ----- 初期化 -----
clear;


%% ----- 画像の読み込み -----
original = imread('https://goo.gl/cYQkka');         % 画像の読み込み


%% ----- ノイズの添付 -----
% --- グレースケール ---
original = rgb2gray(original);                      % グレースケールに変換
figure(1);                                          % 図番号1
imagesc(original);                                  % 画像originalの表示
colormap(gray);                                     % カラーマップをgrayに設定
colorbar;                                           % カラーバーの表示
axis image;                                         % 真の比率に設定

% --- ごま塩ノイズ ---
original = imnoise(original,'salt & pepper',0.02);  % ノイズ添付
figure(2);                                          % 図番号2
imagesc(original);                                  % ごま塩ノイズを添付した画像を表示
colormap(gray);                                     % カラーマップをgrayに設定
colorbar;                                           % カラーバーの表示
axis image;                                         % 真の比率に設定


%% ----- ノイズの除去 -----
% --- 平均化フィルタ ---
IMG = filter2(fspecial('average',3),original);      % 平滑化フィルタの適用
figure(3);                                          % 図番号3
imagesc(IMG);                                       % フィルタ適用後の画像を表示
colormap(gray);                                     % カラーマップをgrayに設定
colorbar;                                           % カラーバーの表示
axis image;                                         % 真の比率に設定

% --- メディアンフィルタ ---
IMG = medfilt2(original,[3 3]);                     % メディアンフィルタの適用
figure(4);                                          % 図番号4
imagesc(IMG);                                       % フィルタ適用後の画像を表示
colormap(gray);                                     % カラーマップをgrayに設定
colorbar;                                           % カラーバーの表示
axis image;                                         % 真の比率に設定

% --- 自作フィルタ ---
f = [0, -1, 0; -1, 5, -1; 0, -1, 0];                % フィルタの設計
IMG = filter2(f,IMG,'same');                        % フィルタの適用
figure(5);                                          % 図番号5
imagesc(IMG);                                       % フィルタ適用後の画像を表示
colormap(gray);                                     % カラーマップをgrayに設定
colorbar;                                           % カラーバーの表示
axis image;                                         % 真の比率に設定


%% ----- 終了 -----
return;