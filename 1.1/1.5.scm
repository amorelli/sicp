; Exercise 1.5
; Ben Bitdiddle has invented a test to determine whether the interpreter 
;  he is faced with is using applicative-order evaluation or normal-order evaluation.
; He defines the following two procedures:

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

; Then he evaluates the expression
; (test 0 (p))

; ____________________________
; Answer

; Applicative-order evaluation:
; -----------------------------
;  Evaluate the arguments, then apply the procedure.
;  This is how the lisp interpreter functions.
;
;  i.e.
; (test 0 (p))
; (p) will be evaluated at this step, returning itself infinitely

; Normal-order evaluation:
; -----------------------
;  Fully expand, don't evaluate the operands until nothing else to expand
;
; i.e.
; (test 0 (p))
; expands to
; (if (= 0 0) 0 (p))
; evaluates and returns 0, the second argument (p) is never evaluated
