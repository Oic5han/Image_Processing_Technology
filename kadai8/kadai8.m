% ��l�����ꂽ�摜�̘A�������Ƀ��x��������


%% ----- ������ -----
clear;


%% ----- �摜�̓ǂݍ��� -----
original = imread('https://goo.gl/cYQkka');     % ���摜�̓ǂݍ���
original = rgb2gray(original);                  % �O���[�X�P�[���ɕϊ�


%% ----- ���摜�̕\�� -----
figure(1);                                      % �}�ԍ�1
imagesc(original);                              % ���摜(original)�̕\��
colormap(gray);                                 % �J���[�}�b�v��gray�ɐݒ�
colorbar;                                       % �J���[�o�[�̕\��
axis image;                                     % �^�̔䗦�ɐݒ�


%% ----- ���x�����O -----
% --- ��l�� ---
tone2 = original > 128;                         % 臒l128�œ�l��
figure(2);                                      % �}�ԍ�2
imagesc(tone2);                                 % ��l�������摜(tone2)�̕\��
colormap(gray);                                 % �J���[�}�b�v��gray�ɐݒ�
colorbar;                                       % �J���[�o�[�̕\��
axis image;                                     % �^�̔䗦�ɐݒ�
% --- ���x�����O ---
tone2 = bwlabeln(tone2);                        % �֐�bwlabeln��p���ă��x�����O
figure(3);                                      % �}�ԍ�3
imagesc(tone2);                                 % ���x�����O�ς݉摜(tone2)�̕\��
colormap(jet);                                  % �J���[�}�b�v��jet�ɐݒ�
colorbar;                                       % �J���[�o�[�̕\��
axis image;                                     % �^�̔䗦�ɐݒ�


%% ----- �I�� -----
return;