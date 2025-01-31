#lang racket
(define (sqrt-3 x)
  (define (good? guess old)
    (< (abs (- guess old)) 0.001))
  (define (improve guess)
    (/ (+ (/ x (square guess))
          (* 2 guess))
       3))
  (define (square z)
    (* z z))
  (define (average a b)
    (/ (+ a b) 2))
  (define (sqrt-iter guess old)
    (if (good? guess old)
        guess
        (sqrt-iter (improve guess) guess)))
  (sqrt-iter 1.0 0))