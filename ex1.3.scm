; Answer 1
(define (sum-of-squares-of-two-largest x y z) 
	(+ 
	(if (or (> x y) (> x z)) (* x x) 0)
	(if (or (> y x) (> y z)) (* y y) 0)
	(if (or (> z y) (> z x)) (* z z) 0)
	)
)

; Answer 2
(define (square-if-not-smallest x y z) (if (or (> x y) (> x z)) (* x x) 0))

(define (sum-of-squares-of-two-largest x y z) 
	(+ 
	(square-if-not-smallest x y z)
	(square-if-not-smallest y z x)
	(square-if-not-smallest z x y)
	)
)