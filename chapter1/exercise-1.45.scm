(define (average a b)
  (/ (+ a b) 2))

(define (average-damp f)
  (lambda (x) (average x (f x))))

(define (damp-count n)
  (floor (/ (log n) (log 2))))

(define (root n i)
  (fixed-point ((repeated average-damp (damp-count n))
                (lambda (x) (/ i (expt x (- n 1))))) 1))
