retornar_subarbol([SubArbolIzq, Nodo, SubArbolDer], Elemento, SubArbol):-
  <(Elemento, Nodo),
  retornar_subarbol(SubArbolIzq, Elemento, SubArbol),!.

retornar_subarbol([SubArbolIzq, Nodo, SubArbolDer], Elemento, SubArbol):-
    >(Elemento, Nodo),
    retornar_subarbol(SubArbolDer, Elemento, SubArbol),!.

retornar_subarbol([SubArbolIzq, Elemento, SubArbolDer], Elemento, [SubArbolIzq, Elemento, SubArbolDer]).
