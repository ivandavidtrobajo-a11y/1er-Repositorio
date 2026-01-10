% Hechos: Estado actual del sistema (ejemplo de prueba)
cisterna(con_agua).      % Puede ser con_agua o poca_agua
tanque1(poca_agua).      % Puede ser lleno o poca_agua
tanque2(lleno).          % Puede ser lleno o poca_agua
bomba(apagada).          % Puede ser encendida o apagada

% Reglas de producción (Base de Conocimiento)

% REGLA 1: Apagar bomba si la cisterna tiene poca agua y está encendida
decision(apagar_bomba) :-
    cisterna(poca_agua),
    bomba(encendida).

% REGLA 2: Apagar bomba si ambos tanques están llenos y está encendida
decision(apagar_bomba) :-
    tanque1(lleno),
    tanque2(lleno),
    bomba(encendida).

% REGLA 3: Encender bomba si algún tanque tiene poca agua, hay agua en cisterna y está apagada
decision(encender_bomba) :-
    (tanque1(poca_agua) ; tanque2(poca_agua)),
    cisterna(con_agua),
    bomba(apagada).

% REGLA 4: Mantener estado actual si no aplican las reglas anteriores
decision(mantener_estado) :-
    \+ decision(apagar_bomba),
    \+ decision(encender_bomba).
