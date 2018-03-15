clc;
clear;
% ��ʼ������
x1 = 2.5;           % ��ʼ��
e_square = 14.4;    % e^2
v0 = 1.09e3;        % V0
r0 = 0.330;         % r0
v = @(x) -e_square / x + v0 * exp(-x / r0);     % V(r)����
f = @(x) e_square / x^2 - v0 / r0 * exp(-x / r0);       % V(r)�����ĵ�����ʽ

% ţ�ٷ�
Newton(f, x1);

% ���ú������
res = fminsearch(v, x1);
fprintf("The answer calculated by built-in function is %.10f\n", res);

