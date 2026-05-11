clear; clc;close all; N=10.^(2:8); E=zeros(1,7); % Setup N and Error array
for i=1:7, E(i)=pi - 4*sum(rand(1,N(i)).^2+rand(1,N(i)).^2<=1)/N(i); end % Gen & Calc
semilogx(N, E, '-o', N, zeros(1,7), '-'); grid on; % Plot error vs reference
xlabel('Samples (N)'); ylabel('Error'); title('Pi Estimation'); % Labels
