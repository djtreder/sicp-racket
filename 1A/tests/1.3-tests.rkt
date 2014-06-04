#lang racket

(module+ test
	 (require rackunit
		  rackunit/text-ui
		  "../src/1.3.rkt"))

(module+
  test
  (run-tests
    (test-suite
      "sum-of-larger-squares"
      (test-case
	"when all numbers are zero"
	(let ([x 0] [y 0] [z 0])
	  (check-equal? (sum-of-larger-squares x y z) 0 "it returns zero")))
      (test-case
	"when one number is one"
	(check-equal? (sum-of-larger-squares 1 0 0) 1 "it returns one")
	(check-equal? (sum-of-larger-squares 0 1 0) 1 "it returns one")
	(check-equal? (sum-of-larger-squares 0 0 1) 1 "it returns one"))
      (test-case
	"when two numbers are one"
	(check-equal? (sum-of-larger-squares 1 1 0) 2 "it returns two")
	(check-equal? (sum-of-larger-squares 0 1 1) 2 "it returns two"))
      (test-case
	"when all numbers are one"
	(check-equal? (sum-of-larger-squares 1 1 1) 2 "it returns two"))
      (test-case
	"when a number is two"
	(check-equal? (sum-of-larger-squares 2 0 0) 4 "it returns two")
	(check-equal? (sum-of-larger-squares 0 2 0) 4 "it returns two")
	(check-equal? (sum-of-larger-squares 0 0 2) 4 "it returns four"))
      (test-case
	"when there are three numbers"
	(check-equal? (sum-of-larger-squares 2 3 4) 25 "it returns the answer")))))

(module+
  test
  (run-tests
    (test-suite
      "sols2"
      (test-case
	"when all numbers are zero"
	(let ([x 0] [y 0] [z 0])
	  (check-equal? (sols2 x y z) 0 "it returns zero")))
      (test-case
	"when one number is one"
	(check-equal? (sols2 1 0 0) 1 "it returns one")
	(check-equal? (sols2 0 1 0) 1 "it returns one")
	(check-equal? (sols2 0 0 1) 1 "it returns one"))
      (test-case
	"when two numbers are one"
	(check-equal? (sols2 1 1 0) 2 "it returns two")
	(check-equal? (sols2 0 1 1) 2 "it returns two"))
      (test-case
	"when all numbers are one"
	(check-equal? (sols2 1 1 1) 2 "it returns two")))))
