; To load: 'csi' to start CHICKEN at cmd line
;   then (load "1.3.scm")

; exercise 1.3
; Define a procedure that takes 3 inputs, and sum of squares the two larger numbers

(define (square x) 
    (* x x))

(define (sum-square i j) 
    (+ (square i) (square j)))

(define (sum-square-largest a b c)
    (cond 
        ((and (>= a b) (>= c b)) (sum-square a c))
        ((and (>= b a) (>= c a)) (sum-square b c))
        (else (sum-square a b))
    )
)
