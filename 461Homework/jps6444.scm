

; Problem 1
(define (PAIR a b) (lambda (p) (p a b)))
(define (LEFT p) (p (lambda (t f) t)))
(define (RIGHT p) (p (lambda (t f) f)))

; Problem 2
; inductive function composition
(define (evaluate inner outer) (eval (list inner outer)); define composition

(define (funcompose lst) (lambda (x) (fold-right evaluate x lst))); fold list into composition

; Problme 3
; merge from merge sort
(define (merge l r)
	(if (null? l) r
		; l is not null		
		(if (null? r) l
			; neither are null
			(if (> (car l) (car r))
				(cons (car r) (merge l (cdr r)))
				(cons (car l) (merge (cdr l) r))))))
























