% Facts
fever(john).
cough(john).

% Rule
flu(X) :-
    fever(X),
    cough(X).

% Backward Chaining
diagnose(X) :-
    flu(X).
