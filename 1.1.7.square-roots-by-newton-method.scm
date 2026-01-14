(define (sqrt x)
  (iter 1.0 x))

(define (iter guess x)
  (if (good-enough? guess x)
      guess
      (iter (improve guess x)
	    x)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))


(define (square x)
  (* x x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(sqrt 9)
(sqrt (+ 100 37))
(sqrt (+ (sqrt 2) (sqrt 3)))
(square (sqrt 1000))

(define (sqrtx x)
  (define (iterx guess x)
    (if (good-enoughx? guess x)
	guess
	(iterx (improvex guess x)
	      x)))
  (define (good-enoughx? guess x)
    (define (squarex x)
      (* x x))
    (< (abs (- (squarex guess) x)) 0.001))
  
  (define (improvex guess x)
    (define (averagex x y)
      (/ (+ x y) 2))
    (averagex guess (/ x guess)))
  (iter 1.0 x))

(sqrtx 9)
(sqrtx (+ 100 37))
(sqrtx (+ (sqrtx 2) (sqrtx 3)))
(square (sqrtx 1000))
