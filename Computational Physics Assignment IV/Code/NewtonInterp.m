function y = NewtonInterp(x_list, y_list, x)
% ��ʼ���ռ�
n = length(x_list);
a = zeros(1,n);
a(1) = y_list(1);
diff = zeros(1, n-1);
% ����һ�׵���
for i = 1:n-1
    diff(i, 1) = (y_list(i+1) - y_list(i)) / (x_list(i+1) - x_list(i));
end
% ����߽׵���
for j = 2:n-1
    for i = 1:n-j
        diff(i, j) = (diff(i+1, j-1) - diff(i, j-1)) / (x_list(j+i) - x_list(i));
    end
end
% ����������
fprintf("\tDivided difference:\n");
disp(diff);
% ȡ�߽׵�����ǰ��һ��
for i = 2:n
    a(i) = diff(1, i-1);
end
% ������ĳ�������ֵ
x_poly = 1;
y = a(1);
for i = 2:n
    x_poly = x_poly * (x - x_list(i-1));
    y = y + a(i)*x_poly;
end