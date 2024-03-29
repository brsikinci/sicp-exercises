#lang planet dyoo/simply-scheme:2:2

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

;This version will produce an infinite recursion because
;new-if is a procedure. The interpreter will try to evaluate
;all of its arguments independently of the result of the good-enough?
;procedure, therefore sqrt-iter procedure will call itself
;until the program runs out of memory.
