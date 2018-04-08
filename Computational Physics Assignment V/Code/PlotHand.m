% % CodeName: PlotHand.m
% % This code makes a plot of your hand, and use the spline method 
% % to replot your hand. All you need is using the mouse to select 
% % a few dozen points outlining your hand.

figure('position', get(0, 'screensize'))
axes('position', [0 0 1 1])
[x,y]=ginput;
% ��ʼ������
n = length(x);  % ȡ��ĸ���
step = 0.1;     % ������ֵ���
% ����������ֵ
x_spline = spline(1:n, x, 1:step:n);     % ��x������������ֵ
y_spline = spline(1:n, y, 1:step:n);     % ��y������������ֵ
% ����ԭʼ���ֺ�����������ֵ���ͼ
figure
plot(x, y, 'r')
title(['Hand plot--' num2str(n) 'numbers you have chosen'])
hold on;
plot(x_spline, y_spline, 'b')
grid on;
legend('Original', 'Spline');