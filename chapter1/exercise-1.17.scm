(define (double a)
  (* a 2))

(define (halve a)
  (/ a 2))

(define (times a b)
  (if (= b 1)
      a
      (if (even? b)
          (double (fast-times a (halve b)))
          (+ a (fast-times a (- b 1))))))
