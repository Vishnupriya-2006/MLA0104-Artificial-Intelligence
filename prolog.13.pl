% Facts
has_fever(john).
has_cough(john).

% Rule
has_flu(X) :-
    has_fever(X),
    has_cough(X).

% Forward Chaining
diagnose(X) :-
    has_flu(X),
    write(X),
    write(' has flu.').
