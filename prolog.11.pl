% Graph edges
edge(a,b).
edge(a,c).
edge(b,d).
edge(b,e).
edge(c,f).
edge(e,g).

% Heuristic values
heuristic(a,6).
heuristic(b,4).
heuristic(c,5).
heuristic(d,3).
heuristic(e,2).
heuristic(f,1).
heuristic(g,0).

% Goal node
goal(g).

% Best First Search
bestfs(Node) :-
    goal(Node),
    write('Goal Found: '), write(Node), nl.

bestfs(Node) :-
    edge(Node,Next),
    heuristic(Next,_),
    bestfs(Next).
