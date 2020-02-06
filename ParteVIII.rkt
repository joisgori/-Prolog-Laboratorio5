#lang racket

(define (multiplo x)
    (eq? (modulo x 3) 0)
    (eq? (modulo x 5) 0)
)
