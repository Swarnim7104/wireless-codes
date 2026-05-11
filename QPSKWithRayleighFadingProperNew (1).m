clear;close all; clc; N=1e5; E=-2:40; e=zeros(1,43); L=10.^(E/10); % Setup params
s=(2*randi([0,1],1,N)-1) + 1j*(2*randi([0,1],1,N)-1); % Gen QPSK
for i=1:43
    h=(randn(1,N)+1j*randn(1,N))/sqrt(2); n=(randn(1,N)+1j*randn(1,N))/sqrt(2); % Chan
    y=(h.*s + n/sqrt(L(i)))./h; % Transmit & Equalize
    e(i)=sum(s ~= sign(real(y))+1j*sign(imag(y))); % Fast QPSK ML Decode
end
pA=0.5*(1-sqrt(L./(L+2))); % Approx Theory
for i=1:43, q(i)=(1/L(i))*integral(@(x) erfc(sqrt(x)).*(1-0.25*erfc(sqrt(x))).*exp(-x/L(i)),0,inf); end % Exact
semilogy(E, pA, E, e/(2*N), 'o', E, q); axis([-2 40 1e-6 0.5]); grid on; % Plot
xlabel('SNR'); ylabel('BER'); legend('Approx','Sim','Exact'); % Labels