(define (expmod base exp n)
  (cond ((= exp 0) 1)
        ((even? exp)
         (let* ((m (expmod base (/ exp 2) n))
                (r (remainder (square m) n)))
           (if (or (= m (- n 1))
                    (= m 1)
                    (not (= r 1)))
               r
               0)))
        (else
         (remainder (* base (expmod base (- exp 1) n))
                    n))))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (define (iter i)
    (cond ((>= i n) #t)
          ((try-it i) (iter (+ i 1)))
          (else #f)))
  (iter 1))


(define (square x)
  (* x x))
