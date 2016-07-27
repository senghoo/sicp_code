(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))


(define (integral f a b n)
  (define h (/ (- b a) n))
  (define (term k)
    (define (y k)
      (f (+ a (* k h))))
    (cond ((= k 0) (y k))
          ((= k n) (y k))
          ((devides? 2 k) (* 2 (y k)))
          (else (* 4 (y k)))))
  (define (next n) (+ n 1))
  (* (/ h 3) (sum term 0 next n) ))

(define (devides? a b)
  (= (remainder b a) 0))
