#lang sicp
; exercise 1.8
; Using a better goodEnough procedure

(define (abs x) (if (< x)
                  (- x)
                  x))  

(define (square x) (* x x))

 (define (cubertIter guess x)
   (if(goodEnough? (improve guess x) guess )
      guess
      (cubertIter (improve guess x )
                x)))

(define (improve guess x )
 (/
  (+
   (/ x (square guess))
   (* 2 guess))
  3))

(define (goodEnough? nextGuess guess)
  (= nextGuess guess))

(define (cubert x ) ( cubertIter 1.0 x ))
(cubert -8)