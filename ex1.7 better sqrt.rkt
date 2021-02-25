#lang sicp
; exercise 1.7
; Using a better goodEnough procedure
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (abs x) (if (< x)
                  (- x)
                  x))  

(define (square x) (* x x))

 (define (sqrtIter guess x)
   (if(goodEnough? (improve guess x) guess )
      guess
      (sqrtIter (improve guess x )
                x)))

(define (improve guess x )
  (average guess (/ x guess)))

(define (average x y) (/ (+ x y) 2))

(define (goodEnough? nextGuess guess)
  (= nextGuess guess))

(define (sqrt x ) ( sqrtIter 1.0 x ))
(sqrt 9)