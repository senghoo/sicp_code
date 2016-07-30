(define (d i)
  (if (= (remainder i 3) 2)
      (* (+ (quotient i 3) 1) 2)
      1))

(define (e)
  (+ (cont-frac2 (lambda (i) 1.0) d 100) 2))
