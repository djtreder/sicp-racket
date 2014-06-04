#lang racket

(provide sum-of-larger-squares)

(define (sum-of-larger-squares . lst)
  (sum-list (square-list (cdr (sort lst <)))))


(define (square-list lst)
  (map (lambda (x) (* x x)) lst))

(define (sum-list lst)
  (foldl (lambda (x y) (+ x y)) 0 lst))
