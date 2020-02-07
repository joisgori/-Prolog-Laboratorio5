evaluar_expresion([SubExpIzq, Expresion, SubExpDer], Respuesta):-
  is_list(Expresion),
  lista_expresion(Expresion, Respuesta),!.

evaluar_expresion(Dato, Dato):-
  number(Dato),!.

evaluar_expresion([SubExpIzq, Expresion, SubExpDer], Respuesta):-
  evaluar_expresion(SubExpIzq, ResultadoIzq),
  evaluar_expresion(SubExpDer, ResultadoDer),
  lista_expresion([ResultadoIzq,Expresion,ResultadoDer], R),
  is(Respuesta, R),!.


lista_expresion([SubExpIzq, Expresion, SubExpDer], Resultado):-
  ==(Expresion, '+'),
  is(Resultado, +(SubExpIzq, SubExpDer)),!.

lista_expresion([SubExpIzq, Expresion, SubExpDer], Resultado):-
  ==(Expresion, '-'),
  is(Resultado, -(SubExpIzq, SubExpDer)),!.

lista_expresion([SubExpIzq, Expresion, SubExpDer], Resultado):-
  ==(Expresion, '*'),
  is(Resultado, *(SubExpIzq, SubExpDer)),!.

lista_expresion([SubExpIzq, Expresion, SubExpDer], Resultado):-
  ==(Expresion, '/'),
  is(Resultado, /(SubExpIzq, SubExpDer)),!.
