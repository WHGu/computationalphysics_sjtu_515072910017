function Newton(f, x1)
syms x;
% ��ʼ������
tol = 1e-10;        % �������
diff_f = diff(f(x));  % f�ĵ�����ʽ
flag = 0;       % �����жϵ���Ϊ0�����
N = 100;    % Ĭ��ѭ������
for n = 1:N
    x = x1;
    tmp = eval(diff_f);
    if tmp == 0      % ����㵽ĳһ��ĵ���ֵΪ0���򷵻�ʧ����Ϣ
        break;
    end
    x2 = x1 - f(x1) / tmp;
    fprintf("N:%d \t x1:%.10f \t x2:%.10f\n", n, x1, x2);
    if abs(x2 - x1) < tol
        r = x2;
        flag = 1;
        break; 
    end
    x1 = x2;
end

if flag == 1
    fprintf("Newton: The root %.10f was found after %d iterations.\n", r, n);
else
    fprintf("Convergence not found!\n");
end

