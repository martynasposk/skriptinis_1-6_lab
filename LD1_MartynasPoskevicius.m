% Martynas Poškevičius
% EF-25/1
% 2026-09-09

x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title ('Dvi funkcijos')
xlabel ('X-ai')
ylabel ('F_1 [-o-]   |   F_2 [-x-]')


%%
N = 0
vektorius = [0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4];
disp (vektorius)
%%
A = [0, 1, 2; 3, 4, 5; 6, 7, 8];
disp (A)
%%
% a)
disp (A(3,2))
%%
% b)
disp (A(2:3,1:2))
%%
% c)
disp (A([1 3], [1 3]))
%%
vektorius2 = vektorius(1:3);
disp (vektorius2)
%%
d = [A vektorius2']