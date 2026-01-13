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

;; naming
;; (define <name> <value>)

(define size 2)
size
(* 5 size)

(define pi 3.14159)
(define radius 10)
(* pi (* radius radius))

(define circumference (* 2 pi radius))
circumference ; 注意：这不是过程，加括号就错了

;; procedure definition
;; (define (<name> <formal parameters>) <body>)

