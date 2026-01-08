%invertir una lista 

invertir(L, R) :-
    invertir_aux(L, [], R).

invertir_aux([], Acum, Acum).
invertir_aux([H|T], Acum, R) :-
    invertir_aux(T, [H|Acum], R).

%sumar una lista 
sumar_lista([], 0).
sumar_lista([H|T], SumaTotal) :-
    sumar_lista(T, SumaCola),
    SumaTotal is H + SumaCola.

%%buscar el ultimo elemento 
ultimo_elemento([Ultimo], Ultimo).
ultimo_elemento([_|Cola], Ultimo) :-
    ultimo_elemento(Cola, Ultimo).

%filtrar los mayores
filtrar_mayores([], _, []).
filtrar_mayores([H|T], N, [H|Res]) :-
    H > N,
    filtrar_mayores(T, N, Res).
filtrar_mayores([H|T], N, Res) :-
    H =< N,
    filtrar_mayores(T, N, Res).


%progenitor
progenitor(ivan,made).
progenitor(ivan,jorge).
progenitor(ana,made).
progenitor(ana,jorge).

hombre(ivan).
hombre(jorge).
mujer(ana).
mujer(made).

es_hermano(X, Y):-
    progenitor(P , X),
    progenitor(P , Y),
        X \== Y,
        hombre(X).
 


