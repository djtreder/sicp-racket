#lang racket

(define (last-pair lst)
  (cond ([null? (cdr lst)] lst)
	(else (last-pair (cdr lst)))))

(last-pair '(x))
(last-pair '(x y))
(last-pair '(x y (z)))

(define (rvrse lst)
  (reverse-helper lst '()))

(define (reverse-helper lst inc)
  (cond ([pair? lst] (reverse-helper (cdr lst) (cons (car lst) inc)))
	(else inc)))

(rvrse '())
(rvrse '(x))
(rvrse '(x y))
(rvrse '(x y (z)))

(define (cc amount coin-values)

  (cond ((= amount 0) 1)

	((or (< amount 0) (no-more? coin-values)) 0)

	(else

	  (+ (cc amount

		 (except-first-denomination

		   coin-values))

	     (cc (- amount

		    (first-denomination

		      coin-values))

		 coin-values)))))

(define us-coins (list 50 25 10 5 1))

(define uk-coins (list 100 50 20 10 5 2 1 0.5))

(define (first-denomination lst)
  (car lst))

(define (except-first-denomination lst)
  (cdr lst))

(define (no-more? lst)
  (not (pair? lst)))

(cc 100 us-coins)

(define (same-parity parity-value . lst)
  (let ([has-same-parity? (lambda (x) (eq? (modulo (+ x parity-value) 2) 0))])
    (cons parity-value (fltr has-same-parity? lst))))

(define (fltr func lst)
  (cond ([null? lst] lst)
	([func (car lst)] (cons (car lst) (fltr func (cdr lst))))
	(else (fltr func (cdr lst)))))

(same-parity 1 2 3 4 5 6 7)
(same-parity 2 3 4 5 6 7)

