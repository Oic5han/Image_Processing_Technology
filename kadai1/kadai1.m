% --- ������ ---
clear

% --- ���摜�̓ǂݍ��݂ƕ\�� ---
original = imread('https://raw.githubusercontent.com/Oic5han/Image_Processing_Technology/master/Balloon.bmp');  % GitHub��̕W���摜��URL
imagesc(original); axis image;  % �摜�̕\��
pause;                          % �ꎞ��~

% --- �k���Ɗg����s���摜���r�����Ă��� ---
% 1���
IMG = imresize(original,0.5);   % �摜��0.5�{�ɏk��
IMG2 = imresize(IMG,2,'box');   % �摜��2�{�Ɋg��
imagesc(IMG2); axis image;      % �摜�̕\��
pause;                          % �ꎞ��~

% 2���
IMG = imresize(IMG,0.5);        % �摜��0.5�{�ɏk��
IMG2 = imresize(IMG,4,'box');   % �摜��4�{�Ɋg��
imagesc(IMG2); axis image;      % �摜�̕\��
pause;                          % �ꎞ��~

% 3���
IMG = imresize(IMG,0.5);        % �摜��0.5�{�ɏk��
IMG2 = imresize(IMG,8,'box');   % �摜��8�{�Ɋg��
imagesc(IMG2); axis image;      % �摜�̕\��
pause;                          % �ꎞ��~

% 4���
IMG = imresize(IMG,0.5);        % �摜��0.5�{�ɏk��
IMG2 = imresize(IMG,16,'box');  % �摜��16�{�Ɋg��
imagesc(IMG2); axis image;      % �摜�̕\��
pause;                          % �ꎞ��~

% 5���
IMG = imresize(IMG,0.5);        % �摜��0.5�{�ɏk��
IMG2 = imresize(IMG,32,'box');  % �摜��32�{�Ɋg��
imagesc(IMG2); axis image;      % �摜�̕\��


return