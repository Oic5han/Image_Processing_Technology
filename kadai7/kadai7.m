% ��f�̃_�C�i�~�b�N�����W��0����255�ɂ���



%% ----- ������ -----
clear;


%% ----- �摜�̓ǂݍ��� -----
original = imread('https://goo.gl/cYQkka');     % ���摜�̎擾
original = rgb2gray(original);                  % �O���[�X�P�[���ɕϊ�


%% ----- ���摜�Ɋւ���\�� -----
% --- ���摜 ---
figure(1);                                      % �}�ԍ�1
imagesc(original);                              % ���摜�̕\��
colormap(gray);                                 % �J���[�}�b�v��gray�ɐݒ�
colorbar;                                       % �J���[�o�[�̕\��
axis image;                                     % �^�̔䗦�ɕύX

% --- ���摜�̃q�X�g�O���� ---
figure(2);                                      % �}�ԍ�2
imhist(original);                               % �q�X�g�O�����̕\��


%% ----- �_�C�i�~�b�N�����W�̊g�� -----
% --- �_�C�i�~�b�N�����W�̊g�� ---
original = double(original);                    % �s��original�̗v�f��double�^�ɕϊ�
mn = min(original(:));                          % �Z�x�l�̍ŏ��l���Z�o
mx = max(original(:));                          % �Z�x�l�̍ő�l���Z�o
original = (original-mn)/(mx-mn)*255;           % �_�C�i�~�b�N�����W�̊g��

% --- �g���̉摜�̕\�� ---
figure(3);                                      % �}�ԍ�3
imagesc(original);                              % �g����original�̕\��
colormap(gray);                                 % �J���[�}�b�v��gray�ɐݒ�
colorbar;                                       % �J���[�o�[�̕\��
axis image;                                     % �^�̔䗦�ɕύX
original = uint8(original);                     % 256�K���ɂ���

% --- �g���̃q�X�g�O�����̕\��
figure(4);                                      % �}�ԍ�4
imhist(original);                               % �Z�x�q�X�g�O�����𐶐��A�\��


%% ----- �I�� -----
return