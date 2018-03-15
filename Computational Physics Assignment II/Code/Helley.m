function Helley(f, x1)
syms x;
tol = 1e-10;                % �������
diff_f_1 = diff(f(x));      % f������һ�׵���
diff_f_2 = diff(f(x), 2);   % f�����Ķ��׵���
N = 100;                    % Ĭ��ѭ������
for n = 1:N
    x = x1;
    tmp_f_1 = eval(diff_f_1);% һ�׵����ľ�����ֵ
    tmp_f_2 = eval(diff_f_2);% ���׵����ľ�����ֵ
    x2 = x1 - 2*f(x1)*tmp_f_1/(2*(tmp_f_1).^2 - f(x1)*tmp_f_2);
    fprintf("N:%d \t x1:%.10f \t x2:%.10f\n", n, x1, x2);
    if abs(x2 - x1) < tol
        r = x2;
        fprintf("Helley: The root %.10f was found after %d iterations\n", r, n);
        break; 
    end
    x1 = x2;
end

        
        
        
        
        
        
        