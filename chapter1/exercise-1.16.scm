(define (fast-expt x n)
  (define (iter a b n)
    (if (= n 0)
        a
        (if (even? n)
            (iter a (* b b) (/ n 2))
            (iter (* a b) b (- n 1))) ))
  (iter 1 x n))
