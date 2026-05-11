close all; d=1:800; y=-31.54-37.1*log10(d); plot(d, y-normrnd(0,3.65,1,800), d, y); % Calc & Plot
xlabel('Dist'); ylabel('Loss'); legend('Shadow','Mean');
