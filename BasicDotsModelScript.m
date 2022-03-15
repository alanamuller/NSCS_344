% Basic Dots Model Script

clear

% D is for number of dots Ss paid attention to
D = 100; 

% viewing time in frames
T = 1;

% fraction of dots moving in the preferred direction
f = 0.6;

% count for correct direction
N_correct = 0;

% count for incorrect direction
N_wrong = 0;

% initialize array
dots = zeros(100,1);


for i = 1:D*T

    % determine the direction of 100 dots
    dot_direction = binornd(1,f);
    
    % save dots in an array - I guess we don't really need this
    dots(i) = dot_direction;
    
    % update count of dots in correct direction
    N_correct = N_correct + dot_direction;
    
    % update count of dots in wrong direction
    N_wrong = N_wrong + (1 - dot_direction);
    
end

if N_correct > N_wrong
    % correct answer
    accuracy = 1;
end

if N_correct < N_wrong
    % wrong answer
    accuracy = 0;
end

if N_correct == N_wrong
    accuracy = binornd(1,0.5);
end

    

















