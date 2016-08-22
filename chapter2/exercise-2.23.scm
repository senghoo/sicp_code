(define (for-each f lst)
  (when (not (null? lst))
    (f (car lst))
    (for-each2 f (cdr lst))))
