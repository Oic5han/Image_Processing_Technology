% 画像のエッジ抽出 


%% ----- 初期化 -----
clear;


%% ----- 画像の読み込み -----
original = imread('https://goo.gl/cYQkka');     % 画像の読み込み


%% ----- グレースケールに変換 -----
original = rgb2gray(original);                  % グレースケールに変換
figure(1);                                      % 図番号1
imagesc(original);                              % 変換した画像の表示
colormap('gray');                               % カラーマップをgrayに設定
colorbar;                                       % カラーバーの表示
axis image;                                     % 真の比率


%% ----- エッジ抽出 -----
% --- プレウィット法 ---
IMG = edge(original,'prewitt');                 % エッジ抽出
figure(2);                                      % 図番号2
imagesc(IMG);                                   % プレウィット法を適用した画像の表示
colormap('gray');                               % カラーマップをgrayに設定
colorbar;                                       % カラーバーの表示
axis image;                                     % 真の比率

% --- ソベル法 ---
IMG = edge(original,'sobel');                   % エッジ抽出
figure(3);                                      % 図番号3
imagesc(IMG);                                   % プレウィット法を適用した画像の表示
colormap('gray');                               % カラーマップをgrayに設定
colorbar;                                       % カラーバーの表示
axis image;                                     % 真の比率

% --- キャニー法 ---
IMG = edge(original,'canny');                   % エッジ抽出
figure(4);                                      % 図番号4
imagesc(IMG);                                   % プレウィット法を適用した画像の表示
colormap('gray');                               % カラーマップをgrayに設定
colorbar;                                       % カラーバーの表示
axis image;                                     % 真の比率


%% ----- 終了 -----
return;