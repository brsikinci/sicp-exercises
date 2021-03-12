#lang planet dyoo/simply-scheme:2:2

(define (bigger-two-sum-of-squares x y z)
  (cond ((and (>= (+ x y) (+ y z)) (>= (+ x y) (+ x z))) (sum-of-squares x y))
        ((and (>= (+ x z) (+ y z)) (>= (+ x z) (+ x y))) (sum-of-squares x z))
        (else (sum-of-squares y z))))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (square x) (* x x))

