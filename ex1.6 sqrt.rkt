#lang sicp

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause))

(define (abs x) (if (< x)
                  (- x)
                  x))  

(define (square x) (* x x))

(define (sqrtIter guess x)
  (if(goodEnough? guess x )
     guess
     (sqrtIter (improve guess x )
               x)))

(define (improve guess x )
  (average guess (/ x guess)))

(define (average x y) (/ (+ x y) 2))

(define (goodEnough? guess x)
  (< (abs (- x (square guess))) 0.001))

(define (sqrt x ) ( sqrtIter 1.0 x ))

(sqrt 4)