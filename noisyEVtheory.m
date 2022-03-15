% Risky Business Noisy - Modeling Risky Decisions Survey

function [EV_safe, EV_risky, choice, NEV_safe, NEV_risky] = noisyEVtheory(X, Y, Z, sigma)

% win $X for sure (safe option)
EV_safe = X;

% Y% chance at $Z (risky option)
EV_risky = Y*Z;

% add noise the safe and risky choice
NEV_safe = EV_safe + sigma * randn;
NEV_risky = EV_risky + sigma * randn;

% Make a choice
choice = NEV_safe > NEV_risky;