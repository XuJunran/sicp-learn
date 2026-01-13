(define (min x y z)
  (cond ((and (< x y) (< x z)) x)
	((and (< y x) (< y z)) y)
	(else z)))

(min 1 2 3)
(min 1 3 2)
(min 2 1 3)
(min 2 3 1)
(min 3 1 2)
(min 3 2 1)

(define (square x) (* x x))

(define (sum-square x y z)
  (cond ((= x (min x y z)) (+ (square y) (square z)))
	((= y (min x y z)) (+ (square x) (square z)))
	(else (+ (square x) (square y)))))

(sum-square 2 1 3)
(sum-square 2 3 1)
(sum-square 3 1 2)
(sum-square 3 2 1)
