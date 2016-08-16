(define (reverse1 lst)
  (if (null? lst)
      '()
      (append (reverse1 (cdr lst)) (list (car lst)))))

