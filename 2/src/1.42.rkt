#lang racket

(define (compose f g)
  (lambda (x)
    (f (g x))))

(define (square x) (* x x))

((compose square add1) 6)
