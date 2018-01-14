% ���f�B�A���t�B���^�[��K�p���C�m�C�Y������̌�����


%% ----- ������ -----
clear;


%% ----- �摜�̓ǂݍ��� -----
original = imread('https://goo.gl/cYQkka');         % �摜�̓ǂݍ���


%% ----- �m�C�Y�̓Y�t -----
% --- �O���[�X�P�[�� ---
original = rgb2gray(original);                      % �O���[�X�P�[���ɕϊ�
figure(1);                                          % �}�ԍ�1
imagesc(original);                                  % �摜original�̕\��
colormap(gray);                                     % �J���[�}�b�v��gray�ɐݒ�
colorbar;                                           % �J���[�o�[�̕\��
axis image;                                         % �^�̔䗦�ɐݒ�

% --- ���܉��m�C�Y ---
original = imnoise(original,'salt & pepper',0.02);  % �m�C�Y�Y�t
figure(2);                                          % �}�ԍ�2
imagesc(original);                                  % ���܉��m�C�Y��Y�t�����摜��\��
colormap(gray);                                     % �J���[�}�b�v��gray�ɐݒ�
colorbar;                                           % �J���[�o�[�̕\��
axis image;                                         % �^�̔䗦�ɐݒ�


%% ----- �m�C�Y�̏��� -----
% --- ���ω��t�B���^ ---
IMG = filter2(fspecial('average',3),original);      % �������t�B���^�̓K�p
figure(3);                                          % �}�ԍ�3
imagesc(IMG);                                       % �t�B���^�K�p��̉摜��\��
colormap(gray);                                     % �J���[�}�b�v��gray�ɐݒ�
colorbar;                                           % �J���[�o�[�̕\��
axis image;                                         % �^�̔䗦�ɐݒ�

% --- ���f�B�A���t�B���^ ---
IMG = medfilt2(original,[3 3]);                     % ���f�B�A���t�B���^�̓K�p
figure(4);                                          % �}�ԍ�4
imagesc(IMG);                                       % �t�B���^�K�p��̉摜��\��
colormap(gray);                                     % �J���[�}�b�v��gray�ɐݒ�
colorbar;                                           % �J���[�o�[�̕\��
axis image;                                         % �^�̔䗦�ɐݒ�

% --- ����t�B���^ ---
f = [0, -1, 0; -1, 5, -1; 0, -1, 0];                % �t�B���^�̐݌v
IMG = filter2(f,IMG,'same');                        % �t�B���^�̓K�p
figure(5);                                          % �}�ԍ�5
imagesc(IMG);                                       % �t�B���^�K�p��̉摜��\��
colormap(gray);                                     % �J���[�}�b�v��gray�ɐݒ�
colorbar;                                           % �J���[�o�[�̕\��
axis image;                                         % �^�̔䗦�ɐݒ�


%% ----- �I�� -----
return;