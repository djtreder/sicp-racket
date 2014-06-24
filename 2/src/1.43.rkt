#lang racket

(provide repeated)

(define (repeated f n)
  (lambda (x)
    (repeated-helper f n x)))

(define (repeated-helper f n x)
  (if (= n 1)
    (f x)
    (repeated-helper f (- n 1) (f x))))

((repeated sqr 2) 5)
