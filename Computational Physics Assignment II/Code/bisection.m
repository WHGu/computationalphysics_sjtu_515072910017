function bisection(f, a, b)
if f(a)*f(b) > 0
    fprintf("There is no root between %f and %f\n", a, b);
    return 
end

% ��ʼ������
tol = 1e-10;
N = 100;
% ��ʼѭ��
for n = 1:N
    c  = (a + b)/2;     % ȡ�е�
    if f(c) == 0        % ���Ϊ0��˵����������Ҫ�ҵĸ�
        break;
    end
    if (b-a)/2 < tol    % ���С����Ҫ��ľ��Ⱦ�ֹͣ
        break;      
    end
    if f(b)*f(c) > 0    % �жϷ����Ƿ�ı�
        b = c;
    else
        a = c;
    end     
end  
fprintf("Bisec: The root %.10f was found after %d iterations\n", c, n);

