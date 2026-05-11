close all; m=2:20; for i=1:19, S(i)=mean(sum(raylrnd(1,m(i),1e4).^2,1)); end
plot(m,10*log10(m), m,10*log10(S),'o'); xlabel('Branches'); ylabel('SNR'); legend('Th','Sim');