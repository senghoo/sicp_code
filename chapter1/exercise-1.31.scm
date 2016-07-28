(define (product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
  (iter a 1))

(define (pi n)
  (define (next a) (+ a 1))
  (define (term a)
    (if (devides? 2 a)
        (/ (+ a 2) (+ a 1))
        (/ (+ a 1) (+ a 2))))
  (* (product term 1 next n) 4))


(define (product2 term a next b)
  (if (> a b)
      1
      (* (term a)
         (product2 term (next a) next b))))

(define (pi2 n)
  (define (next a) (+ a 1))
  (define (term a)
    (if (devides? 2 a)
        (/ (+ a 2) (+ a 1))
        (/ (+ a 1) (+ a 2))))
  (* (product2 term 1 next n) 4))

(define (devides? a b)
  (= (remainder b a) 0))
