(define (iterative-improve good-enough? improve)
  (define (iter guess)
    (let ((next (improve guess)))
      (if (good-enough? guess next)
          next
          (iter next))))
  (lambda (x) (iter x)))

(define (sqrt x)
  ((iterative-improve
    (lambda (old new)
      (< (/ (abs (- old new))
            old)
         0.001))
    (lambda (guess)
      (average guess (/ x guess))))
   1))

(define (fixed-point f first-guess)
  ((iterative-improve
    (lambda (old new)
      (< (abs (- old new)) tolerance))
    f)
   first-guess))
