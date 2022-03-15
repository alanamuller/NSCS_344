function [EV_safe, EV_risky, p_safe] = NEVtheory(N, X, Y, Z, sigma)

% EV theory
for i = 1:N
    
    [EV_safe, EV_risky, choice(i), NEV_safe, NEV_risky] = noisyEVtheory(X, Y, Z, sigma);
    
end

p_safe = mean(choice);