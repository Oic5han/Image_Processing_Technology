% ���ʕ��͖@��p���ĉ摜��l������



% --- ������ ---
clear;


% --- ���摜�̐ݒ� ---
original = imread('https://goo.gl/oNKqej');     % ���摜�̎擾
original = rgb2gray(original);                  % �O���[�X�P�[���ɕϊ�


% --- ���摜�̕\�� ---
figure(1);                             % �}�ԍ�1
imagesc(original);                     % original�̕\��
colormap(gray);                        % �J���[�}�b�v��gray�ɐݒ�
colorbar;                              % �J���[�o�[�̕\��
axis image;                            % �^�̔䗦�ɕύX


% --- ���ʕ��͖@�̓K�p ---
hist_ori = imhist(original);           % original�̃q�X�g�O����
myu_T = mean(hist_ori);                % �S�̂̔Z�x�̕��ϒl
max_val = 0;
max_thres = 1;
% 臒lii�����߂�
for ii = 1:255
    % �q�X�g�O������2�̃N���X�ɕ�����
    C1 = hist_ori(1:ii);
    C2 = hist_ori(ii+1:256);
    % ��f��
    n1 = sum(C1);
    n2 = sum(C2);
    % ���ϒl
    myu1 = mean(C1);
    myu2 = mean(C2);
    % ���U�̎Z�o
    sigma1 = var(C1);
    sigma2 = var(C2);
    sigma_w = (n1 * sigma1 + n2 * sigma2) / (n1 + n2);                      %�N���X�����U
    sigma_B = (n1 * (myu1 - myu_T)^2 + n2 * (myu2 - myu_T)^2) / (n1 + n2);  %�N���X�ԕ��U
    % sigma_B/sigma_w���ő傩�ǂ������f����
    if max_val < sigma_B/sigma_w
        max_val = sigma_B/sigma_w;  % �ő�Ȃ���
        max_thres = ii;             % �ő�Ȏ���ii��臒l
    end
end


% --- ���ʕ��͖@��K�p�����摜�̕\�� ---
IMG = original > max_thres;         % 臒l��"0"��"1"�ɕ�����
figure(2);                          % �}�ԍ�2
imagesc(IMG);                       % IMG�̕\��
colormap(gray);                     % �J���[�}�b�v��gray�ɐݒ�
colorbar;                           % �J���[�o�[�̕\��
axis image;                         % �^�̔䗦�ɕύX


return