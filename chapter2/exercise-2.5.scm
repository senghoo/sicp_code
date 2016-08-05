(define (cons1 x y)
  (* (expt 2 x) (expt 3 y)))


(define (factor-count c n)
  (if (not (= (remainder c n) 0))
      0
      (+ 1 (d (/ c n) n))))

(define (car1 c)
  (factor-count c 2))

(define (cdr1 c)
  (factor-count c 3))
