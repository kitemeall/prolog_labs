concat_lists([], L, L).
concat_lists([H | T], L, [H | LR]) :- 
	concat_lists(T, L, LR).

insert_before_nth([], I, N, []).
insert_before_nth([H | T], R) :- 
	revese_list(T, R1),
	concat_lists(R1, [H], R). 