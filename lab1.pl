
man("Vova").
man("Misha").
man("Kolya").

man("Oleg").
man("Donald").


woman("Elena").
woman("Anna").
woman("Alla").
woman("Tanya").

married("Vova", "Elena").
married("Elena", "Vova").

married("Oleg", "Alla").
married("Alla", "Oleg").


parent("Vova", "Oleg").
parent("Elena", "Oleg").

parent("Elena", "Donald").
parent("Vova", "Donald").

parent("Alla", "Kolya").
parent("Oleg", "Kolya").

parent("Donald", "Misha").



% Get sibling of X in Y
sibling(X, Y) :-
	parent(Y1, X),
	parent(Y1, Y), Y \= X.
	
% Get sister of husband in Y for wife X
sister_of_husband(X, Y) :- 
	married(X, Y1),
	sister(Y1, Y),
	format("Sister of husband ~s ~n", [Y]).

mother_of_husband(X, Y) :-
	married(X, Y1),
	parent(Y, Y1),
	woman(Y),
	format("mother of husband ~s ~n", [Y]).

cousin(X, Y) :-
	parent(Y1, X),
	sibling(Y1, Y2),
	parent(Y2, Y),
	man(Y), 
	format("cousin ~s ~n", [Y]).