% 判別分析法を用いて画像二値化する



% --- 初期化 ---
clear;


% --- 原画像の設定 ---
original = imread('https://goo.gl/oNKqej');     % 原画像の取得
original = rgb2gray(original);                  % グレースケールに変換


% --- 原画像の表示 ---
figure(1);                             % 図番号1
imagesc(original);                     % originalの表示
colormap(gray);                        % カラーマップをgrayに設定
colorbar;                              % カラーバーの表示
axis image;                            % 真の比率に変更


% --- 判別分析法の適用 ---
hist_ori = imhist(original);           % originalのヒストグラム
myu_T = mean(hist_ori);                % 全体の濃度の平均値
max_val = 0;
max_thres = 1;
% 閾値iiを求める
for ii = 1:255
    % ヒストグラムを2つのクラスに分ける
    C1 = hist_ori(1:ii);
    C2 = hist_ori(ii+1:256);
    % 画素数
    n1 = sum(C1);
    n2 = sum(C2);
    % 平均値
    myu1 = mean(C1);
    myu2 = mean(C2);
    % 分散の算出
    sigma1 = var(C1);
    sigma2 = var(C2);
    sigma_w = (n1 * sigma1 + n2 * sigma2) / (n1 + n2);                      %クラス内分散
    sigma_B = (n1 * (myu1 - myu_T)^2 + n2 * (myu2 - myu_T)^2) / (n1 + n2);  %クラス間分散
    % sigma_B/sigma_wが最大かどうか判断する
    if max_val < sigma_B/sigma_w
        max_val = sigma_B/sigma_w;  % 最大なら代入
        max_thres = ii;             % 最大な時のiiが閾値
    end
end


% --- 判別分析法を適用した画像の表示 ---
IMG = original > max_thres;         % 閾値で"0"と"1"に分ける
figure(2);                          % 図番号2
imagesc(IMG);                       % IMGの表示
colormap(gray);                     % カラーマップをgrayに設定
colorbar;                           % カラーバーの表示
axis image;                         % 真の比率に変更


return