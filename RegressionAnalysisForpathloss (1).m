close all; d=log10([10;20;50;100;300]); P=[-70;-75;-90;-110;-125]; plot(fitlm(d,P)); xlabel('Log Dist'); ylabel('Loss'); % Fit & Plot
X=[ones(5,1), d]; C=(X'*X)\(X'*P) % Manual Regression