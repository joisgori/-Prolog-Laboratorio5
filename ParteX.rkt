#lang racket

(define (contador unCentavo cincoCentavos diezCentavos veinticincoCentavos dolar)
  (let*
      (
          [totalCentavo (/ (* unCentavo 1) 100)   ]
          [totalCinco (/ (* cincoCentavos 5) 100) ]
          [totalDiez (/ (* diezCentavos 10) 100 ) ]
          [totalVeinticinco (/ (* veinticincoCentavos 25) 100)  ]
      )
      (exact->inexact
        (+ (+ totalCentavo (+ totalCinco (+ totalDiez totalVeinticinco) ) ) dolar)
      )  
  )
)
