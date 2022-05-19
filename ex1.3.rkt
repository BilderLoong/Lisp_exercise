#lang sicp
;http://community.schemewiki.org/?sicp-ex-1.3
(define (square x) (* x x))


(define (square-sum x y) (+ (square x) (square y)))

(define (sum-of-two-larger-square x y z)
  (cond ((and (> x y) (> z y)) (square-sum x z))
        ((and (> y x) (> z x)) (square-sum y z))
        (else (square-sum x y))))


(sum-of-two-larger-square 2 3 5) ;34
(sum-of-two-larger-square 3 2 5) ;34
(sum-of-two-larger-square 2 2 5)
(sum-of-two-larger-square 2 2 2)
(sum-of-two-larger-square -2 3 -5) ; 13
(sum-of-two-larger-square -2 -5 3) ; 13

; The below two resolution are all wrong :(.
; Wrong Solution 1.
;(define (sum-of-two-larger-square x y z)
; (+ (square-of-larger x y) (square-of-larger y z)))

; Wrong Solution 2.
;(define (square-of-larger x y)
;  (if (> x y)
;      (square x)
;      (square y)))

; The below procedure wont' work as expect when the arguments satisfy: y > x > z.
; I was wondering about the reason:
; It's because the opposite (in other words, the implicit conditional checking
; of the below else clause) of the first two conditional checking isn't contain
; the relationship between x and z. That's said you don't know the relationship
; between x and z, you can't you the whether x is larger than z or z is larger
; than x. You can see this from the first two conditional checking that doesn't
; checking the relationship between x and z.

;(define (sum-of-two-larger-square x y z)
;  (cond ((and (> x y) (> y z)) (square-sum x y))
;        ((and (> x y) (> z y)) (square-sum x z))
;        (else (square-sum y z))))
