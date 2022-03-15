% Risky Business Noise - Modeling Risky Decisions Survey

clear

% noise standard deviation
sigma = 5;

% number of decisions
N = 100;

[EV_safe(1), EV_risky(1), p_safe(1)] = NEVtheory(N, 10, 0.25, 19.74, sigma);
[EV_safe(2), EV_risky(2), p_safe(2)] = NEVtheory(N, 10, 0.75, 19.97, sigma);

% softmax equation
% Delta is defined as EV_risky - EV_safe

Delta = [-20:0.1:20];
beta = 1/sigma * sqrt(pi/2);

for i = 1:length(Delta)
    p_safe_softmax(i) = 1/(1+exp(beta * -Delta(i)));
end


figure(1); clf;
plot(EV_safe - EV_risky, p_safe, '.', 'markersize', 50)
hold on;
plot(Delta, p_safe_softmax, 'linewidth', 3)
ylim([0 1])
xlabel('EV_safe - EV_risky', 'interpreter', 'none')
ylabel('p(safe)')
set(gca, 'fontsize', 14)
xlim([-20 20])


