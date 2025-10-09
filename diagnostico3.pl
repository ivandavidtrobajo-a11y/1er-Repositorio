% --- Sistema experto básico en Prolog (Versión prolog) ---
% Autor: Ivan David Trobajo
% Fecha: 9 de octubre 2025
% Ajustes mínimos para demostrar commit en rama 'prolog'

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
diagnosticar(Enfermedad) :-
    write('Iniciando diagnóstico rápido...'), nl,
    write('Fiebre? (s/n): '), read(F1),
    write('Tos? (s/n): '), read(F2),
    write('Congestion? (s/n): '), read(F3),
    write('Cansancio? (s/n): '), read(F4),
    write('Perdida de olfato? (s/n): '), read(F5),
    findall(X, cumple(X, [F1,F2,F3,F4,F5]), Enfermedades),
    write('Resultado posible: '), write(Enfermedades), nl.

% Reglas de coincidencia
cumple(gripe, [s,s,s,_,_]).
cumple(covid, [s,s,_,s,s]).
cumple(alergia, [_,_,s,_,_]).
