clear
home

% a)
T = 2;
ta = 0;
dt = 0.001;
te = 50
t = [ta : dt : te];

s1 = sigma_(t) .* exp(-t/T);

E1 = dt .* sum(s1.^2)

subplot(3,1,1);
plot(t,s1,'linewidth',2);

% b)

s2 = sigma_(t/2 - 2);

E2 = dt .* sum(s2.^2) % unendlich

subplot (3,1,2);
plot(t,s2,'linewidth',2);

% c)

%s3 = (t-2) .* sigma_(t-2);

%E3 = dt .* sum(s3.^2) % unendlich

%subplot(3,1,3);
%plot(t,s3,'linewidth',2);

% d)

s4 = (sigma_(t) - sigma_(t-4)) .* cos((pi/4)*(t-2));

E4 = dt .* sum(s4.^2)

subplot (3,1,3);
plot(t,s4,'linewidth',2);