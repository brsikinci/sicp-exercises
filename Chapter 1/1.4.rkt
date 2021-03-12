#lang planet dyoo/simply-scheme:2:2

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;This enables us to choose which operation will be done
;based on a condition.