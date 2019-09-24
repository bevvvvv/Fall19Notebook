

; Problem 1
(define (PAIR a b) (lambda (p) (p a b)))
(define (LEFT p) (p (lambda (t f) t)))
(define (RIGHT p) (p (lambda (t f) f)))

; Problem 2
; inductive function composition
(define (evaluate inner outer) (eval (list inner outer))); define composition

(define (funcompose lst) (lambda (x) (fold-right evaluate x lst))); fold list into composition

; Problem 3
; merge from merge sort
(define (merge l r) 
	(if (null? l) r
		; l is not null		
		(if (null? r) l
			; neither are null
			(if (> (car l) (car r))
				(cons (car r) (merge l (cdr r)))
				(cons (car l) (merge (cdr l) r))))))

; Problem 4
(define (findMax lst)
	(if (null? lst) 0
		(if (number? lst) lst
			(if (null? (cdr lst)) (if (list? (car lst)) (findMax (car lst)) (car lst))
				(max (findMax (car lst)) (findMax (cdr lst)))))))

; Problem 5
(define (depthOfList lst)
	(define (depthCounter lst count)
		(cond
			((null? lst) count) ; base case
			((not (list? (car lst))) (depthCounter (cdr lst) count)) ; first element is not a list
			(else (depthCounter (car lst) (+ count 1)))))
	(if (list? lst) (depthCounter lst 1) 0))

; Problem 6

; Part a
; newlength function
(define (newlength lst)
	(define (countLst count lst)
			(if (null? lst) (+ 0 count) (+ 1 count)))
	(fold-left countLst 0 lst))

; Part b
; addOne function
(define (addOne lst)
	(define (increment x) (+ 1 x))
	(map increment lst))

; Part c
; lstOR function
(define (lstOR lst)
	(define (orFunc l r) (or l r))
	(fold-left orFunc #f lst))

; Part d
; removeDup function
(define (removeDup lst)
	(define (addToList elem l)
		(if (null? l) (cons elem l) (if (= (car l) elem) l (cons elem l))))
	(fold-right addToList '() lst))


















