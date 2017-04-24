%%                  Experiment 3

clear;clc;
A = 5;
f = 1;
t = 0:0.01:6;
x = A*sin(2*pi*f*t);
plot(t,x);
legend('Original Signal');
% sampling
fs = [1.2 2 4]*f;
for i = 1:length(fs)
    n = 0:1/fs(i):6;
    X = A*sin(2*pi*f*n);
    figure;
    hold on;
    stem(n,X,'k*');
    plot(n,X,'k');
    plot(t,x,'b:');
    legend(['fs = ' num2str(fs(i)) 'f']);
end