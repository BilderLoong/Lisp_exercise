#lang sicp

(define true #t)

(define (return x)
  (cond
    (#t x)
    ((< x 1) (-1))
    ))

(return -100) ;-100
(return 100) ;100