(define average (lambda (x y) (* 0.5 (+ x y)))) 
(define improve (lambda (guess x) (average guess (/ x guess))))
(define square (lambda (x) (* x x)))
(define abs (lambda (x) (if (< 0 x) x (- 0 x))))
(define good-enough?
        (lambda (guess x) (< (abs (- x (square guess))) 0.0000001)))
(define sqrt-iter
        (lambda (guess x)
                (if (good-enough? guess x) guess (sqrt-iter (improve guess x) x))))
(define sqrt (lambda (x) (sqrt-iter 1.0 x)))
