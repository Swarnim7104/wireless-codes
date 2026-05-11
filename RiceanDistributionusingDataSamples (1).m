close all; N=1e6; m=sqrt(normrnd(8,9,1,N).^2 + normrnd(0,9,1,N).^2); subplot(211); histogram(m); % Gen & Hist
[f,xi]=ksdensity(m); [f1,xj]=ksdensity(random('Rician',8,9,1,N)); subplot(212); plot(xi,f,xj,f1,'o'); % PDF
xlabel('Mag'); ylabel('Prob'); legend('Data','Built-in'); % Labels