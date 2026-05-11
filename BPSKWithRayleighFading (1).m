clear;close all; clc; N=1e5; E=-2:40; e=zeros(1,43); L=10.^(E/10); % Setup params
s=2*randi([0 1],1,N)-1; % Gen BPSK
for i=1:43
    h=(randn(1,N)+1j*randn(1,N))/sqrt(2); n=(randn(1,N)+1j*randn(1,N))/sqrt(2); % Chan
    e(i)=sum((real((h.*s + n/sqrt(L(i)))./h)>0) ~= (s>0)); % Transmit, Eq & Decode
end
semilogy(E, 0.5*erfc(sqrt(L)), E, e/N, 'o', E, 0.5*(1-sqrt(L./(L+1)))); % Plot BER
axis([-2 40 1e-6 0.5]); grid on; xlabel('SNR'); ylabel('BER'); legend('AWGN','Sim','Rayleigh');