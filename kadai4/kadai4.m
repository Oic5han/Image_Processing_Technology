% �摜�̃q�X�g�O����
% ��f�̔Z�x�q�X�g�O�����𐶐�����



% --- ������ ---
clear;


% --- ���摜�̐ݒ� ---
original = imread('https://goo.gl/oNKqej');     % ���摜�̎擾
original = rgb2gray(original);                  % �O���[�X�P�[���ɕϊ�

% --- �\�� ---
figure(1);                                      % �}�ԍ�1 �� �摜
imagesc(original);                              % �摜�̕\��
colormap(gray);                                 % �J���[�}�b�v��gray�ɐݒ�
colorbar;                                       % �J���[�o�[�̕\��
axis image;                                     % �^�̔䗦�ɂ���

figure(2);                                      % �}�ԍ�2 �� �q�X�g�O����
imhist(original);                               % �q�X�g�O����(imhist)�̕\��

figure(3);                                      % �}�ԍ�3 �� �q�X�g�O����
histogram(original);                            % �q�X�g�O����(histogram)�̕\��


return