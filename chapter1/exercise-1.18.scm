(define (double a)
  (* a 2))

(define (halve a)
  (/ a 2))

(define (fast-times a b)
  (define (iter s a b)
    (if (= b 0)
        s
        (if (even? b)
            (iter s (double a) (halve b))
            (iter (+ s a) a (- b 1)))))
  (iter 0 a b))
