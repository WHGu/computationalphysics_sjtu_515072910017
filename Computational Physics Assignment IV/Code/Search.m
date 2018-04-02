function Search(error, step, target)
% error��Ҫ��ľ��ȣ�step��alpha�ļ����target��I��ֵ
% ��ʼ������
alpha_list = 0:5:25;
I_list = [1.57080 1.57379 1.58284 1.59814 1.62003 1.64900];
% ͨ���������ղ�ֵ�õ��Ľ��
fprintf("The value of alpha by LagrangeInterp could be:\n");
index_Lag = 1;
for alpha = 5:step:10
    res_Lag = LagrangeInterp(alpha_list, I_list, alpha);
    if abs(res_Lag-target) <= error
        fprintf("%d\t%f\n", index_Lag, alpha);
        index_Lag = index_Lag + 1;
    end
end
% ͨ��ţ�ٲ�ֵ�õ��Ľ��
fprintf("The value of alpha by NewtonInterp could be:\n");
index_New = 1;
for alpha = 5:step:10
    res_New = NewtonInterp(alpha_list, I_list, alpha);
    if abs(res_New-target) <= error
        fprintf("%d\t%f\n", index_New, alpha);
        index_New = index_New + 1;
    end
end