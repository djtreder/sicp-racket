#lang racket

(define (f-recursive n)
  (if (< n 3)
    n
    (+ (f-recursive (- n 1)) (* 2 (f-recursive (- n 2))) (* 3 (f-recursive (- n 3))))))

(f-recursive 2)
(f-recursive 3)
(f-recursive 4)
(f-recursive 10)

(define (f-iterative n)
  (if (< n 3)
    n
    (f-iter-helper 2 1 0 (- n 2))))

(define (f-iter-helper a b c remain)
  (if (= remain 0)
    a
    (f-iter-helper
      (+ a (* 2 b) (* 3 c))
      a
      b
      (- remain 1))))
  
(f-iterative 2)
(f-iterative 3)
(f-iterative 4)
(f-iterative 10)
