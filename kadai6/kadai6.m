% �f�B�U�@�ɂ��2�l��



% --- ������ ---
clear;


% --- �摜�̓ǂݍ��� ---
original = imread('https://goo.gl/oNKqej');     % ���摜�̎擾
original = rgb2gray(original);                  % �O���[�X�P�[���ɕϊ�


% --- ���摜�̕\�� ---
figure(1);                                      % �}�ԍ�1
imagesc(original);                              % ���摜�̕\��
colormap(gray);                                 % �J���[�}�b�v��gray�ɐݒ�
colorbar;                                       % �J���[�o�[�̕\��
axis image;                                     % �^�̔䗦�ɕύX


% --- 臒l128��2�l�� ---
thr128 = original > 128;                        % 臒l128������"1"��"0"�ɕϊ�
figure(2);                                      % �}�ԍ�2
imagesc(thr128);                                % �摜�̕\��
colormap(gray);                                 % �J���[�}�b�v��gray�ɐݒ�
colorbar;                                       % �J���[�o�[�̕\��
axis image;                                     % �^�̔䗦�ɕύX


% --- �f�B�U�@��2�l�� ---
dit = dither(original);                         % �f�B�U�@�̓K�p
figure(3);                                      % �}�ԍ�3
imagesc(dit);                                   % �摜�̕\��
colormap(gray);                                 % �J���[�}�b�v��gray�ɐݒ�
colorbar;                                       % �J���[�o�[�̕\��
axis image;                                     % �^�̔䗦�ɕύX


return