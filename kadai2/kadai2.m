% --- ������ ---
clear;

% --- ���摜�̎擾�ƕ\�� ---
original = imread('https://goo.gl/aGYCsn');     % ���摜�̎擾
original = rgb2gray(original);                  % ���摜���O���[�X�P�[���ɕϊ�
imagesc(original);                              % �O���[�X�P�[���̉摜��\��
colormap(gray);                                 % �J���[�}�b�v���O���[�ɐݒ�
colorbar;                                       % �J���[�o�[�̕\�� 
axis image;                                     % ���W���̏c�����^�̔䗦�ɕύX
pause;                                          % �ꎞ��~

% --- 2�K���摜�̐��� ---
IMG_2tone = original>128;                       % "0"��"1"�̔z��ɕϊ� �� 2�K��
imagesc(IMG_2tone);                             % IMG�̕\��
colormap(gray);                                 % �J���[�}�b�v���O���[�ɐݒ�
colorbar;                                       % �J���[�o�[�̕\��
axis image;                                     % ���W���̏c�����^�̔䗦�ɕύX
pause;                                          % �ꎞ��~

% --- 4�K���摜�̐��� ---
IMG0 = original>64;                             % �ł��Z����(1/4)
IMG1 = original>128;                            % ���ɔZ��(2/4)
IMG2 = original>192;                            % ���̎��ɔZ��(3/4)
IMG_4tone = IMG0+IMG1+IMG2;                     % �S�đ������킹�� �� 4�K��
imagesc(IMG_4tone);                             % IMG_4tone�̕\��
colormap(gray);                                 % �J���[�}�b�v���O���[�ɐݒ�
colorbar;                                       % �J���[�o�[�̕\��
axis image;                                     % ���W���̏c�����^�̔䗦�ɕύX
pause;                                          % �ꎞ��~

% --- 8�K���摜�̍쐬 ---
IMG0 = original>32;                             % 1/8
IMG1 = original>64;                             % 2/8
IMG2 = original>96;                             % 3/8
IMG3 = original>128;                            % 4/8
IMG4 = original>160;                            % 5/8
IMG5 = original>192;                            % 6/8
IMG6 = original>224;                            % 7/8
IMG_8tone = IMG0+IMG1+IMG2+IMG3+IMG4+IMG5+IMG6; % �S�đ������킹�� �� 8�K��
imagesc(IMG_8tone);                             % IMG_8tone�̕\��
colormap(gray);                                 % �J���[�}�b�v���O���[�ɐݒ�
colorbar;                                       % �J���[�o�[�̕\��
axis image;                                     % ���W���̏c�����^�̔䗦�ɕύX

return