loves(romeo, juliet).

loves(juliet, romeo) :- loves(romeo, juliet).

male(bob).
male(sam).

female(alice).
female(clara).
female(sarah).

happy(alice).
happy(albert).

dances(alice) :-
	happy(alice),
	female(alice).