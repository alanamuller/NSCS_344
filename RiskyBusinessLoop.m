% Risky Business Loop - Modeling Risky Decisions Survey

% EV theory
for i = 1:40
[EV_safe(i), EV_risky(i), choice(i)] = EVtheory_survey(10, 0.5, i);
end


figure(1); clf;
plot(EV_safe - EV_risky, choice, '.', 'markersize', 50)
xlabel('EV_safe - EV_risky', 'interpreter', 'none')
ylabel('p(safe)')
set(gca, 'fontsize', 14)
xlim([-20 20])