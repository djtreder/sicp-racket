#lang racket

(provide reverse-string)

(define (reverse-string original-string)
  (if (= (string-length original-string) 0)
    ""
    (string-append (reverse-string (substring original-string 1))
		   (substring original-string 0 1))))
