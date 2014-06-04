#lang racket

(module+ test
	 (require rackunit
		  rackunit/text-ui
		  "../src/example.rkt"))

(module+
  test
  (run-tests
    (test-suite
      "reverse-string"
      (test-case
	"when input is empty"
	(let ([original ""])
	  (check-equal? (reverse-string original) "" "it returns the empty string")))
      (test-case
	"when input is a single character"
	(let ([original "a"])
	  (check-equal? (reverse-string original) "a" "it returns the original string")))
      (test-case
	"when input has two of the same character"
	(let ([original "aa"])
	  (check-equal? (reverse-string original) "aa" "it returns the original string")))
      (test-case
	"when input has two different characters"
	(let ([original "ab"])
	  (check-equal? (reverse-string original) "ba" "it returns the reversed string")))
      (test-case
	"when the input has lots of characters"
	(let ([original "asdfghjkl;"])
	  (check-equal? (reverse-string original) ";lkjhgfdsa" "it returns the reversed string"))))))
