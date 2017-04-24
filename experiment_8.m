%%              Experiment 8
%% 1. ask

f1 = 5;
f2 = 30;
t = 0:0.001:1;
A = 5;
m = square(2*pi*f1*t);
c = A*sin(2*pi*f2*t);

ask = (1+m)/2.*c;

subplot(311)
plot(t,m);
subplot(312)
plot(t,c);
subplot(313)
plot(t,ask);

%% 2. psk

f1 = 5;
f2 = 30;
t = 0:0.001:1;
A = 5;

m = square(2*pi*f1*t);
c = A*sin(2*pi*f2*t);

psk = m.*c;

subplot(311)
plot(t,m);
subplot(312)
plot(t,c);
subplot(313)
plot(t,psk);