% E.g. Equilibrado
% [ [ [ [] , 3 , [] ] , 4 , [] ] , 5 , [ [ [] , 8 , [] ] , 16 , [ [] , 20 , [] ] ] ]

% E.g. No Equilibrado
% [ [] , 1 , [ [] , 2 , [ [] , 3 , [] ] ] ]

arbol_equilibrado(Arbol):-
  postOrderI(Arbol, R1),
  postOrderD(Arbol, R2),
  is(R, abs(-(R1,R2))),
  >=(R, 2),
  writeln('No es un arbol equilibrado'),!.

arbol_equilibrado(Arbol):-
    postOrderI(Arbol, R1),
    postOrderD(Arbol, R2),
    is(R, abs(-(R1,R2))),
    =<(R, 2),
    writeln('Es un arbol equilibrado'),!.

postOrderI([ArbolIzquierda, Raiz, ArbolDerecha], Contador):-
  postOrderI(ArbolIzquierda, ContadorIzq),
  is(Contador, +(ContadorIzq, 1)),!.

postOrderD([ArbolIzquierda, Raiz, ArbolDerecha], Contador):-
    postOrderD(ArbolDerecha, ContadorDer),
    is(Contador, +(ContadorDer, 1)),!.

postOrderI([], 0):-!.
postOrderD([], 0):-!.
