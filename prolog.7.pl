% Facts
male(ram).
male(shyam).
male(raj).
male(amit).

female(sita).
female(gita).
female(priya).
female(anu).

father(ram,shyam).
father(ram,gita).
father(shyam,raj).
father(shyam,priya).

mother(sita,shyam).
mother(sita,gita).
mother(gita,raj).
mother(gita,priya).

% Rules
parent(X,Y):-father(X,Y).
parent(X,Y):-mother(X,Y).

grandfather(X,Y):-
    father(X,Z),
    parent(Z,Y).

grandmother(X,Y):-
    mother(X,Z),
    parent(Z,Y).

brother(X,Y):-
    male(X),
    parent(P,X),
    parent(P,Y),
    X \= Y.

sister(X,Y):-
    female(X),
    parent(P,X),
    parent(P,Y),
    X \= Y.
