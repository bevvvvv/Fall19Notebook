

; Problem 1
(define (PAIR a b) (lambda (p) (p a b)))
(define (LEFT p) (p (lambda (t f) t)))
(define (RIGHT p) (p (lambda (t f) f)))
























