#lang racket

(require "1.43.rkt")

(define dx 0.0001)

(define (smooth f)
  (lambda (x)
    (average (f (- x dx)) (f x) (f (+ x dx)))))

(define (average . lst)
  (/ (apply + lst) (length lst)))

(define (n-smooth f n)
  ((repeated smooth n) f))

(+ 1 1)
