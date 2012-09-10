clear all; close all;
load('sunspotdata');
figure, subplot(3,2,1); plot(year, sunspot);
title('Sunspot data');
xlabel('Year');
ylabel('Sunspot');


y = sunspot;
L = length(y);
v = ones(L, 1);
Phi1 = correlogramse(y, L);
Phi2 = periodogramse(y, v, L);
Phi3 = bartlettse(y, 24, L);
v = ones(24, 1);
Phi4 = welchse(y, v, 10, L);
w = ones(200, 1);
Phi5 = btse(y, w, L);

% length(Phi1)
% length(Phi2)
% length(Phi3)
% length(Phi4)
% length(Phi5)
w = 0:L-1;
w = 2*pi*w/L;
subplot(3,2,2); plot(w, Phi1);
title('Periodogram');
xlabel('Frequency (rad/s)');
ylabel('Magnitude');
subplot(3,2,3); plot(w, Phi2);
title(' Modified Periodogram');
xlabel('Frequency (rad/s)');
ylabel('Magnitude');
subplot(3,2,4); plot(w, Phi3);
title('Bartlett''s method');
xlabel('Frequency (rad/s)');
ylabel('Magnitude');
subplot(3,2,5); plot(w, Phi4);
title('Welch''s method');
xlabel('Frequency (rad/s)');
ylabel('Magnitude');
subplot(3,2,6); plot(w, Phi5);
title('Blackman-Tukey method');
xlabel('Frequency (rad/s)');
ylabel('Magnitude');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% second part %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
load('lynxdata');
figure, subplot(3,2,1); plot(year, lynx);
title('Lynx data');
xlabel('Year');
ylabel('Lynx');

y = lynx;
L = length(y);
v = ones(L, 1);
Phi1 = correlogramse(y, L);
Phi2 = periodogramse(y, v, L);
Phi3 = bartlettse(y, 24, L);
v = ones(24, 1);
Phi4 = welchse(y, v, 10, L);
w = ones(70, 1);
Phi5 = btse(y, w, L);

% length(Phi1)
% length(Phi2)
% length(Phi3)
% length(Phi4)
% length(Phi5)
w = 0:L-1;
w = 2*pi*w/L;
subplot(3,2,2); plot(w, Phi1);
title('Periodogram');
xlabel('Frequency (rad/s)');
ylabel('Magnitude');
subplot(3,2,3); plot(w, Phi2);
title(' Modified Periodogram');
xlabel('Frequency (rad/s)');
ylabel('Magnitude');
subplot(3,2,4); plot(w, Phi3);
title('Bartlett''s method');
xlabel('Frequency (rad/s)');
ylabel('Magnitude');
subplot(3,2,5); plot(w, Phi4);
title('Welch''s method');
xlabel('Frequency (rad/s)');
ylabel('Magnitude');
subplot(3,2,6); plot(w, Phi5);
title('Blackman-Tukey method');
xlabel('Frequency (rad/s)');
ylabel('Magnitude');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
load('lynxdata');
figure, subplot(3,2,1); plot(year, loglynx);
title('Lynx data');
xlabel('Year');
ylabel('logLynx');

avg = mean(loglynx(:));
y = loglynx-avg;
L = length(y);
v = ones(L, 1);
Phi1 = correlogramse(y, L);
Phi2 = periodogramse(y, v, L);
Phi3 = bartlettse(y, 24, L);
v = ones(24, 1);
Phi4 = welchse(y, v, 10, L);
w = ones(70, 1);
Phi5 = btse(y, w, L);

% length(Phi1)
% length(Phi2)
% length(Phi3)
% length(Phi4)
% length(Phi5)
w = 0:L-1;
w = 2*pi*w/L;
subplot(3,2,2); plot(w, Phi1);
title('Periodogram');
xlabel('Frequency (rad/s)');
ylabel('Magnitude');
subplot(3,2,3); plot(w, Phi2);
title(' Modified Periodogram');
xlabel('Frequency (rad/s)');
ylabel('Magnitude');
subplot(3,2,4); plot(w, Phi3);
title('Bartlett''s method');
xlabel('Frequency (rad/s)');
ylabel('Magnitude');
subplot(3,2,5); plot(w, Phi4);
title('Welch''s method');
xlabel('Frequency (rad/s)');
ylabel('Magnitude');
subplot(3,2,6); plot(w, Phi5);
title('Blackman-Tukey method');
xlabel('Frequency (rad/s)');
ylabel('Magnitude');
