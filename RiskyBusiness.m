% Risky Business - Modeling Risky Decisions Survey

% EV theory
[EV_safe(1), EV_risky(1), choice(1)] = EVtheory_survey(10, 0.25, 19.74);
[EV_safe(2), EV_risky(2), choice(2)] = EVtheory_survey(10, 0.75, 19.74);

figure(1); clf;
plot(EV_safe - EV_risky, choice, '.', 'markersize', 50)
xlabel('EV_safe - EV_risky', 'interpreter', 'none')
ylabel('p(safe)')
set(gca, 'fontsize', 14)
xlim([-20 20])