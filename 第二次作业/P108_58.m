%% 第一问
%定义变量
syms T1 t;
%计算积分，其中dirac(t)表示单位冲激函数，inf表示无穷大
int(sin(t)*dirac(t-T1/2),t,-inf,inf)

%% 第二问
%定义变量
syms t;
%计算积分，其中dirac(t)表示单位冲激函数，inf表示无穷大
int(dirac(t-1)*(t^3+t+2),t,-inf,inf)
