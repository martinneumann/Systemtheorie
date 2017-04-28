clear
home

dt = 0.001;
te = 10;
t = [-te : dt : te];
t1 = [-2*te : dt : 2 * te];

s1 = 1/2 * sigma_(t).*exp(-t/2);
s2 = 5*(sigma_(t) - sigma_(t-4));

phi = dt * conv(s1,s2)

subplot(3,1,1);
plot(t,s1,'linewidth',2);
subplot(3,1,2);
plot(t,s2,'linewidth',2);
subplot(3,1,3);
plot(t1,phi,'linewidth',2);
