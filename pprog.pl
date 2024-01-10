reverse_list([], []).
reverse_list([Head|Tail], Reversed) :-
    reverse_list(Tail, TailReversed),
    append(TailReversed, [Head], Reversed).

print_list([]).
print_list([X]) :- write(X).
print_list([H|T]) :-
    write(H),
    write(' '),
    print_list(T).

main :-
    read(List),
    reverse_list(List, Reversed),
    print_list(Reversed).