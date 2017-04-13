concat_lists([], L, L).
concat_lists([H | T], L, [H | LR]) :- 
	concat_lists(T, L, LR).

revese_list([], []).
revese_list([H | T], R) :- 
	revese_list(T, R1),
	concat_lists(R1, [H], R). 