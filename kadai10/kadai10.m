% �摜�̃G�b�W���o 


%% ----- ������ -----
clear;


%% ----- �摜�̓ǂݍ��� -----
original = imread('https://goo.gl/cYQkka');     % �摜�̓ǂݍ���


%% ----- �O���[�X�P�[���ɕϊ� -----
original = rgb2gray(original);                  % �O���[�X�P�[���ɕϊ�
figure(1);                                      % �}�ԍ�1
imagesc(original);                              % �ϊ������摜�̕\��
colormap('gray');                               % �J���[�}�b�v��gray�ɐݒ�
colorbar;                                       % �J���[�o�[�̕\��
axis image;                                     % �^�̔䗦


%% ----- �G�b�W���o -----
% --- �v���E�B�b�g�@ ---
IMG = edge(original,'prewitt');                 % �G�b�W���o
figure(2);                                      % �}�ԍ�2
imagesc(IMG);                                   % �v���E�B�b�g�@��K�p�����摜�̕\��
colormap('gray');                               % �J���[�}�b�v��gray�ɐݒ�
colorbar;                                       % �J���[�o�[�̕\��
axis image;                                     % �^�̔䗦

% --- �\�x���@ ---
IMG = edge(original,'sobel');                   % �G�b�W���o
figure(3);                                      % �}�ԍ�3
imagesc(IMG);                                   % �v���E�B�b�g�@��K�p�����摜�̕\��
colormap('gray');                               % �J���[�}�b�v��gray�ɐݒ�
colorbar;                                       % �J���[�o�[�̕\��
axis image;                                     % �^�̔䗦

% --- �L���j�[�@ ---
IMG = edge(original,'canny');                   % �G�b�W���o
figure(4);                                      % �}�ԍ�4
imagesc(IMG);                                   % �v���E�B�b�g�@��K�p�����摜�̕\��
colormap('gray');                               % �J���[�}�b�v��gray�ɐݒ�
colorbar;                                       % �J���[�o�[�̕\��
axis image;                                     % �^�̔䗦


%% ----- �I�� -----
return;