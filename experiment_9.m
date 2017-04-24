%%              Experiment 9
%% given binaray data
clc; clear;

d = [0 1 1 0 0 0 1 1 1 0 0 0 0 1 1 1 0 1 1];
len = length(d);

%% UniPolar

dd = [d; d];
dd = dd(:)';
x = [];
for a = 1:len
    x = [x a-1 a-(1e-10)];
end
subplot(411);
plot(x, dd, 'r');
grid on;
axis([0, len, -2, 2]);
text((0.5:len),0.5*ones(1,len),num2str(d(:)));
legend('UniPolar');

%% Polar

dd(dd==0) = -1;
x = [];
for a = 1:len
    x = [x a-1 a-(1e-10)];
end
subplot(412);
plot(x, dd, 'b');
grid on;
axis([0, len, -2, 2]);
legend('Polar');

%% BiPolar

t = find(d);
t = t(2:2:end);
d(t) = -1;
dd = [d; d];
dd = dd(:)';
x = [];
for a = 1:len
    x = [x a-1 a-(1e-10)];
end
subplot(413);
plot(x, dd, 'm');
grid on;
axis([0, len, -2, 2]);
legend('BiPolar');


%% Manchester

ddd = [~d; ~d; d; d];
ddd = ddd(:)';
ddd(ddd==0) = -1;
x = [];
for a = 1:len
    x = [x a-1 a-0.5 a-0.5+1e-10 a-(1e-10)];
end
subplot(414);
plot(x, ddd, 'k');
grid on;
axis([0, len, -2, 2]);
legend('Menchaster');