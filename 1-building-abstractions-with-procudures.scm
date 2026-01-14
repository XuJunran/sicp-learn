;;; expressions
486

(+ 137 349)
(- 1000 334)
(* 5 99)
(/ 10 5)
(+ 2.7 10)

;;; 前缀的好处
;; 可以容纳任意多的参数
(+ 21 35 12 7)
(* 25 4 12)

;; 方便嵌套
(+ (* 3 5) (- 10 6))

;; 格式: 操作数竖直对齐
(+ (* 3 (+ (* 2 4) (+ 3 5))) (+ (- 10 7) 6))

(+ (* 3
      (+ (* 2 4)
	 (+ 3 5)))
   (+ (- 10 7)
      6))

;;; naming
;;  (define <name> <e>)

(define size 2)
size
(* 5 size)

(define pi 3.14159)
(define radius 10)
(* pi (* radius radius))

(define circumference (* 2 pi radius))
circumference ; 注意：这不是过程，加括号就错了

;;; procedure definition
;;  (define (<name> <formal parameters>) <body>)

(define (square x) (* x x))
(square 21)
(square (+ 2 5))
(square (square 3))

(define (sum-of-square x y)
  (+ (square x) (square y)))

(sum-of-square 3 4)

(define (f a)
  (sum-of-square (+ a 1) (* a 2)))

(f 5)

;;; conditional expression
;;  (cond (<p1> <e1>)
;;        (<p2> <e2>)
;;        .
;;        .
;;        .
;;        (<pn> <en>)

;;  (cond (<p1> <e1>)
;;        (<p2> <e2>)
;;        .
;;        .
;;        .
;;        (<pn> <en>)
;;        (else <e>)

;;  (if <predicate> <consequent> <alternative>)

;;  (if <p> <e1> <e2>)

(define (abs x)
  (cond ((> x 0) x)
	((= x 0) 0)
	((< x 0) (- x))))

(abs 0)
(abs 1)
(abs -1)

;;; boolean
true
false

#t
#f

;;; logical
;;  (and <e1> ... <en>)
;;  (or <e1> ... <en>)
;;  (and <e>)

(define x 1)
(and (> x 5) (< x 10))

(define x 7)
(and (> x 5) (< x 10))

(define x 12)
(and (> x 5) (< x 10))

(define (>= x y)
  (or (> x y) (= x y)))

(define (>=2 x y)
  (not (< x y)))

(>= 1 1)
(>= 1 0)
(>= 1 2)

(>=2 1 1)
(>=2 1 0)
(>=2 1 2)

