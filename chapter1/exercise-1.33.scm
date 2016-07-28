(define (filtered-accumulate combiner null-value term a next b filter)
  (define (iter a result)
    (cond ((> a b) result)
          ((filter a) (iter (next a) (combiner result (term a))))
          (else (iter (next a) result))))
  (iter a null-value))



(define (square n) (* n n))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((devides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (devides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (prime-sum a b)
  (define (term x) x)
  (define (next x) (+ x 1))
  (filtered-accumulate + 0 term a next b prime?))


(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(define (coprime-sum n)
  (define (coprime? x) (= (gcd n x) 1))
  (define (term x) x)
  (define (next x) (+ x 1))
  (filtered-accumulate + 0 term 1 next n coprime?))
