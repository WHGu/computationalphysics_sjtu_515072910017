function y = LagrangeInterp(x_list, y_list, x)
% ��ʼ���ռ�
n = length(x_list);
L = zeros(1, n);    

% ����L(x)
for i = 1:n
    L(i) = 1;
    for j = 1:n
        if j ~= i
            L(i) = L(i).*(x - x_list(j))./(x_list(i) - x_list(j));
        end
    end
end

% ������
y = sum(y_list.*L);
end

            