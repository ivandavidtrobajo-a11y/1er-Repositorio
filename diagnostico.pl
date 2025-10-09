% --- Sistema experto básico en Prolog ---
% Autor: Iván David Trobajo Medina
% Fecha: 9 de octubre 2025

% Base de conocimiento
sintoma(gripe, fiebre).
sintoma(gripe, tos).
sintoma(gripe, congestion).

sintoma(covid, fiebre).
sintoma(covid, tos).
sintoma(covid, cansancio).
sintoma(covid, perdida_olfato).

sintoma(alergia, estornudos).
sintoma(alergia, picazon).
sintoma(alergia, congestion).

% Regla para diagnóstico
diagnosticar :-
    write('Tiene fiebre? (s/n): '), read(F1),
    write('Tiene tos? (s/n): '), read(F2),
    write('Tiene congestion? (s/n): '), read(F3),
    write('Tiene cansancio? (s/n): '), read(F4),
    write('Tiene perdida de olfato? (s/n): '), read(F5),
    findall(X, cumple(X, [F1,F2,F3,F4,F5]), Enfermedades),
    write('Posibles enfermedades: '), write(Enfermedades).

cumple(gripe, [s,s,s,_,_]).
cumple(covid, [s,s,_,s,s]).
cumple(alergia, [_,_,s,_,_]).

% Para ejecutar: ?- diagnosticar.
