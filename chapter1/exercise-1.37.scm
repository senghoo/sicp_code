(define (cont-frac n d k)
  (define (iter i)
    (if (> i k)
        0
        (/ (n i) (+ (d i) (iter (+ i 1))))))
  (iter 1))

(define (cont-frac2 n d k)
  (define (iter i s)
    (if (= i 0)
        s
        (iter (- i 1) (/ (n i) (+ (d i) s)))))
  (iter k 0))
