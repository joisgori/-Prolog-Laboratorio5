suma_arbol([SubArbolIzq, Nodo, SubArbolDer], Suma):-
  suma_arbol(SubArbolIzq, AcumuladorIzq),
  suma_arbol(SubArbolDer, AcumuladorDer),
  is(Suma, +(Nodo, +(AcumuladorIzq, AcumuladorDer))),!.

suma_arbol([], 0).
