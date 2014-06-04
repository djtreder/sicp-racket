#lang racket

(provide sum-of-larger-squares sols2)

(define (sum-of-larger-squares . lst) (- (sum-list (square-list lst)) (min-list (square-list lst))))


(define (square-list lst)
  (map (lambda (x) (* x x)) lst))

(define (sum-list lst)
  (foldl (lambda (x y) (+ x y)) 0 lst))

(define (min-list lst)
  (foldl (lambda (x y) (min x y)) (car lst) (cdr lst)))

; (define (sols2 x y z) (- (+ x y z) (min x y z)))

(define (sols2 . lst) 

(define (put-max-at-top-of-set lst)
  (put-max-at-top-of-set-helper (car lst) (cdr lst) '()))

(define (put-max-at-top-of-set-helper high lst ret)
  (cond ((null? lst) (cons high ret))
	(let ([big (max high (car lst))]
	      [sml (min high (car lst))])
	  (put-max-at-top-of-set-helper big (cdr lst) (cons sml ret)))))
