%%              Experiment 4
%% 1. (a)

clc;clear;
t = -1:0.1:1;
f = -5:0.01:5;
z = [];
for fr = f
    z = [z trapz(t,exp(-2*pi*fr*t))];
end
plot(f,z);
xlabel('frequency \rightarrow');
legend('\fontsize{14}{\int}\fontsize{10}e^-^2^{\pi}^f^tdt');

%% 1. (b)

clc;clear;
t = -1:0.1:1;
f = -5:0.01:5;
z = [];
for fr = f
    z = [z trapz(t,exp(-2*pi*1i*fr*t))];
end
plot(f,real(z));
xlabel('frequency \rightarrow');
legend('\fontsize{14}{\int}\fontsize{10}e^-^i^2^{\pi}^f^tdt');

%% 2. (a)

clc;clear;
f = 1;
t = 0:0.01:2;
x = sin(2*pi*f*t);
figure;
plot(real(x), imag(x));
title('Complex plane');
legend('sin(2\pift)');
figure;
plot(t,real(x));
hold on;
plot(t,imag(x));
legend('Real part', 'Imaginary part');
xlabel('t \rightarrow');

%% 2. (b)

clc;clear;
f = 10;
t = -2:0.0001:2;
x = cos(2*pi*f*t).*exp(-2i*t);
figure;
plot(real(x), imag(x));
title('Complex plane');
legend('cos(2\pift).e^-^2^i^t');
figure;
plot(t,real(x));
hold on;
plot(t,imag(x));
legend('Real part', 'Imaginary part');
xlabel('t \rightarrow');