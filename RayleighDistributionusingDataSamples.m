N=1e6; x=normrnd(0,3,1,N); y=normrnd(0,3,1,N); m=sqrt(x.^2+y.^2); p=atan2(y,x); % Gen
[f,xi]=ksdensity(m); [g,xj]=ksdensity(p); [f1,~]=ksdensity(raylrnd(3,1,N)); % PDFs
subplot(221); plot(xi,f,xi,f1,'o'); subplot(222); plot(xj,g); subplot(223); histogram(m); subplot(224); histogram(p); % Plot
