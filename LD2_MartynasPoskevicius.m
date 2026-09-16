A = [200:-10:10]
B = log10 (A)
C = 10.^B
D = C-A
%%
A = [pi/2, 3i, exp(1)^pi; log2(2), 2*pi, log10(1); log(exp(1)), pi^pi, cos(pi)]
A(:, 2) = rand (3,1)
sum (A)
%%
A = 4.5;
f = 6;
t = [0:0.001:1.5];
b = 1;
U1 = 3;
U2 = 1.5;

st = A * cos(2*pi*f*t);
n = b * randn(size(t));
s = st + n
a = s(s>U1)
b = s;
b(abs(b)<U2) = 0
c = size(s)
d = size(a)
emax = max(b)
emin = min(b)
%%
A = input('Iveskite vektoriu A');
B = [A(end:-1:6), A(1:5)];
disp('Vektorius B yra:')
disp(B)
