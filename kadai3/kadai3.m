% 臒l����
% 臒l��4�p�^�[���ݒ肵�\������



% --- ������ ---
clear;

% --- ���摜�̏��� ---
original = imread('https://goo.gl/oNKqej');     % ���摜�̎擾
original = rgb2gray(original);                  % �O���[�X�P�[���ɕϊ�
figure(1);                                      % �}�ԍ�1 �� �摜
imagesc(original);                              % �摜�̕\��
colormap(gray);                                 % �J���[�}�b�v��gray�ɐݒ�
colorbar;                                       % �J���[�o�[�̕\��
axis image;                                     % �^�̔䗦�ɂ���
figure(2);                                      % �}�ԍ�2 �� �q�X�g�O����
histogram(original);                            % �q�X�g�O�����̕\��
pause;                                          % �ꎞ��~

% --- 臒l64 ---
IMG64 = original > 64;                          % �P�x�l��64�ȏ�̉�f��1�C���̑���0�ɕϊ�
figure(1);                                      % �}�ԍ�1 �� �摜
imagesc(IMG64);                                 % IMG64�̕\��
colormap(gray);                                 % �J���[�}�b�v��gray�ɐݒ�
colorbar;                                       % �J���[�o�[�̕\��
axis image;                                     % �^�̔䗦�ɂ���
figure(2);                                      % �}�ԍ�2 �� �q�X�g�O����
histogram(IMG64);                               % �q�X�g�O�����̕\��
pause;                                          % �ꎞ��~

% --- 臒l96 ---
IMG96 = original > 96;                          % �P�x�l��96�ȏ�̉�f��1�C���̑���0�ɕϊ�
figure(1);                                      % �}�ԍ�1 �� �摜
imagesc(IMG96);                                 % IMG96�̕\��
colormap(gray);                                 % �J���[�}�b�v��gray�ɐݒ�
colorbar;                                       % �J���[�o�[�̕\��
axis image;                                     % �^�̔䗦�ɂ���
figure(2);                                      % �}�ԍ�2 �� �q�X�g�O����
histogram(IMG96);                               % �q�X�g�O�����̕\��
pause;                                          % �ꎞ��~

% --- 臒l128 ---
IMG128 = original > 128;                        % �P�x�l��128�ȏ�̉�f��1�C���̑���0�ɕϊ�
figure(1);                                      % �}�ԍ�1 �� �摜
imagesc(IMG128);                                % IMG128�̕\��
colormap(gray);                                 % �J���[�}�b�v��gray�ɐݒ�
colorbar;                                       % �J���[�o�[�̕\��
axis image;                                     % �^�̔䗦�ɂ���
figure(2);                                      % �}�ԍ�2 �� �q�X�g�O����
histogram(IMG128);                              % �q�X�g�O�����̕\��
pause;                                          % �ꎞ��~

% --- 臒l192 ---
IMG192 = original > 192;                        % �P�x�l��192�ȏ�̉�f��1�C���̑���0�ɕϊ�
figure(1);                                      % �}�ԍ�1 �� �摜
imagesc(IMG192);                                % IMG192�̕\��
colormap(gray);                                 % �J���[�}�b�v��gray�ɐݒ�
colorbar;                                       % �J���[�o�[�̕\��
axis image;                                     % �^�̔䗦�ɂ���
figure(2);                                      % �}�ԍ�2 �� �q�X�g�O����
histogram(IMG192);                              % �q�X�g�O�����̕\��

return