(define (double f)
  (lambda (x)
    (f (f x))))

(define (inc x)
  (+ 1 x))

(((double (double double)) inc) 5)
(((double (lambda (x) (double (double x)))) inc) 5)
(((lambda (x) (double (double (double (double x))))) inc) 5)
((double (double (double (lambda (x) (inc (inc x)))))) 5)
((double (lambda (x) (inc (inc (inc (inc (inc (inc (inc (inc x)))))))))) 5)
((lambda (x) (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc x))))))))))))))))) 5)
(inc (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc (inc 5))))))))))))))))
