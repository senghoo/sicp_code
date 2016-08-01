(define (repeated f n)
  (define (iter i res)
    (if (= i 0)
        res
        (iter (- i 1) (f res))))
  (lambda (x) (iter n x)))
