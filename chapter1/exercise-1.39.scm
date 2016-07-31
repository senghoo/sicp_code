(define (tan-cf x k)
  (define square-x (* x x))
  (/ (cont-frac2 (lambda (i) (- square-x))
                 (lambda (i) (- (* i 2) 1))
                 k)
     x))
