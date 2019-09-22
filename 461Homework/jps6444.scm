

; Problem 1
(define (PAIR a b) (lambda (p) (p a b)))
(define (LEFT p) (p (lambda (t f) t)))
(define (RIGHT p) (p (lambda (t f) f)))

; Problem 2
; inductive function composition
(define (evaluate inner outer) (eval '(outer inner))); define composition

(define (funcompose lst) (lambda (x) (fold-left evaluate x lst))); fold list into composition
























