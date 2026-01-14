(define (cube-root x)
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
    (/ (+ (/ x
	     (* guess guess))
	  (* 2 guess))
       3))
  (iter 1.0 x))

(cube-root (* 2 2 2))
(cube-root (* 3 3 3))
(cube-root (* 4 4 4))

;;; 1.1.8
(define (cube-rootx x)
  (define (iter guess)
    (if (good-enough? guess (improve guess))
	(improve guess)
	(iter (improve guess))))
  (define (good-enough? pre-guess guess)
    (> 0.01
       (abs (/ (- guess pre-guess)
	       pre-guess))))
  (define (improve guess)
    (/ (+ (/ x
	     (* guess guess))
	  (* 2 guess))
       3))
  (iter 1.0))

(cube-rootx (* 2 2 2))
(cube-rootx (* 3 3 3))
(cube-rootx (* 4 4 4))
