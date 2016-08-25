(define (square x) (* x x))

(define (square-tree t)
  (cond ((pair? t)
         (cons (square-tree (car t)) (square-tree (cdr t))))
        ((null? t) '())
        (else (square t))))

(define (square-tree2 t)
  (if (pair? t)
      (map square-tree2 t)
      (square t)))
