clc;
clear;
% ��ʼ������
init = [-4 -3];   % ��ʼ��
g1 = @(x) -3 * log2(2.2 - exp(x));      % ����g1(x)
g2 = @(x) log(2.2 - 2.^(-x/3));         % ����g2(x)

for i = 1:2     % ���������������Լ�����ѭ��
    if i == 1 
        f  = g1;
    else
        f = g2;
    end
    for j = 1:2     % ��������ʼ�㣬���Լ�����ѭ��
        x1 = init(1, j);
        fprintf("Function: g%d(x) Initial Value: %d\n", i, x1);
        FixedPoint(f, x1);      % Ϊ�˱�����ʾ�����ｫFixedPoint�����е���ϸ���ע�͵���
    end
end