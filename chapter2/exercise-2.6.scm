(define (+ a b)
  (lambda (f)
    (lambda (x)
      ((a f)
       ((b f) x)))))