(define (same-parity . n)
  (define (same d)
    (or (and (even? d) (even? (car n)))
        (and (odd? d) (odd? (car n)))))
  (define (iter i)
    (cond
     ((null? i) '())
     ((same (car i))
      (cons (car i) (iter (cdr i))))
     (else (iter (cdr i)))))
  (iter n))
