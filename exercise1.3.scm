(define (min x y)
  (cond ((< x y) x)
	(else y)))

(define (min3 x y z)
  (min (min x y) z))

(define (square x) (* x x))

(define (sum-square x y z)
  (cond ((= x (min3 x y z)) (+ (square y) (square z)))
	((= y (min3 x y z)) (+ (square x) (square z)))
	(else (+ (square x) (square y)))))

(min 1 1)
(min 1 2)
(min 2 1)

(min3 1 2 3)
(min3 1 3 2)
(min3 2 1 3)
(min3 2 3 1)
(min3 3 1 2)
(min3 3 2 1)

(sum-square 1 2 3)
(sum-square 1 3 2)
(sum-square 2 1 3)
(sum-square 2 3 1)
(sum-square 3 1 2)
(sum-square 3 2 1)
