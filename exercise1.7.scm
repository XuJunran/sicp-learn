(define (sqrt x)
  (define (iter guess x)
    (if (good-enough? guess (improve guess x))
	(improve guess x)
	(iter (improve guess x)
	      x)))
  (define (good-enough? pre-guess guess)
    (> 0.01
       (abs (/ (- guess pre-guess)
	       pre-guess))))
  (define (improve guess x)
    (define (average x y)
      (/ (+ x y) 2))
    (average guess (/ x guess)))

  (iter 1.0 x))

(sqrt 9)
(sqrt (+ 100 37))
(sqrt (+ (sqrt 2) (sqrt 3)))
(square (sqrt 1000))

(sqrt 0.0000009)
(sqrt 10000000000000000000000000000000)
