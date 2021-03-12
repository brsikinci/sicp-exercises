#lang planet dyoo/simply-scheme:2:2

(define (p) (p))

(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))

;When using applicative-order evaluation, the expression (test 0 (p)) will never
;evaluate because p is a function which calls itself. This creates an infinite recursion.

;When using normal-order evaluation, the expression will evaluate to 0:

;(test 0 (p)) 
;(if (= 0 0) 0 (p))

;The predicate is true, therefore the consequent will be evaluated and the function p will
;never be called so there won't be an infinite recursion.