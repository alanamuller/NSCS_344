% Risky Business - Modeling Risky Decisions Survey

function [EV_safe, EV_risky, choice] = EVtheory_survey(X, Y, Z)

% win $X for sure (safe option)
EV_safe = X;

% Y% chance at $Z (risky option)
EV_risky = Y*Z;

% Make a choice
choice = EV_safe > EV_risky;