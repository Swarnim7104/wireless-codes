d=1:1e7; l=sqrt(d.^2+35^2); r=sqrt(d.^2+65^2); lam=1/3; % Params
plot(10*log10(d), 10*log10((lam/(4*pi))^2*abs(1./l-exp(1j*6*pi*(r-l))./r).^2)); xlabel('Dist'); ylabel('Power'); % Plot