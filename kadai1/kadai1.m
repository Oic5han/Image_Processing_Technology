% --- ‰Šú‰» ---
clear

% --- Œ´‰æ‘œ‚Ì“Ç‚İ‚İ‚Æ•\¦ ---
original = imread('https://raw.githubusercontent.com/Oic5han/Image_Processing_Technology/master/Balloon.bmp');  % GitHubã‚Ì•W€‰æ‘œ‚ÌURL
imagesc(original); axis image;  % ‰æ‘œ‚Ì•\¦
pause;                          % ˆê’â~

% --- k¬‚ÆŠg‘å‚ğs‚¢‰æ‘œ‚ğr‚­‚µ‚Ä‚¢‚­ ---
% 1‰ñ–Ú
IMG = imresize(original,0.5);   % ‰æ‘œ‚ğ0.5”{‚Ék¬
IMG2 = imresize(IMG,2,'box');   % ‰æ‘œ‚ğ2”{‚ÉŠg‘å
imagesc(IMG2); axis image;      % ‰æ‘œ‚Ì•\¦
pause;                          % ˆê’â~

% 2‰ñ–Ú
IMG = imresize(IMG,0.5);        % ‰æ‘œ‚ğ0.5”{‚Ék¬
IMG2 = imresize(IMG,4,'box');   % ‰æ‘œ‚ğ4”{‚ÉŠg‘å
imagesc(IMG2); axis image;      % ‰æ‘œ‚Ì•\¦
pause;                          % ˆê’â~

% 3‰ñ–Ú
IMG = imresize(IMG,0.5);        % ‰æ‘œ‚ğ0.5”{‚Ék¬
IMG2 = imresize(IMG,8,'box');   % ‰æ‘œ‚ğ8”{‚ÉŠg‘å
imagesc(IMG2); axis image;      % ‰æ‘œ‚Ì•\¦
pause;                          % ˆê’â~

% 4‰ñ–Ú
IMG = imresize(IMG,0.5);        % ‰æ‘œ‚ğ0.5”{‚Ék¬
IMG2 = imresize(IMG,16,'box');  % ‰æ‘œ‚ğ16”{‚ÉŠg‘å
imagesc(IMG2); axis image;      % ‰æ‘œ‚Ì•\¦
pause;                          % ˆê’â~

% 5‰ñ–Ú
IMG = imresize(IMG,0.5);        % ‰æ‘œ‚ğ0.5”{‚Ék¬
IMG2 = imresize(IMG,32,'box');  % ‰æ‘œ‚ğ32”{‚ÉŠg‘å
imagesc(IMG2); axis image;      % ‰æ‘œ‚Ì•\¦


return