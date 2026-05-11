m=2:10; plot(m, arrayfun(@(x) mean(max(exprnd(100,x,1e4))), m), m, 100*arrayfun(@(x) sum(1./(1:x)), m), 'o'); % Calc & Plot
xlabel('Branches'); ylabel('SNR'); legend('Sim','Th'); % Labels
