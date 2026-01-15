(define (factorial n)
  (if (= 1 n)
      1
      (* n (factorial (- n 1)))))

(factorial 1)
(factorial 2)
(factorial 3)
(factorial 4)
(factorial 5)

(define (factorial2 n)
  (define (iter product counter max-count)
    (if (> counter max-count)
	product
	(iter (* counter product)
	      (+ counter 1)
	      max-count)))
  (iter 1 1 n))

(factorial2 1)
(factorial2 2)
(factorial2 3)
(factorial2 4)
(factorial2 5)
