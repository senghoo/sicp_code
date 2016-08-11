(define (make-center-percent center percent)
  (make-interval (* center (- 1 percent))
                 (* center (+ 1 percent))))

(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2))

(define (percent i)
  (- 1 (/ (lower-bound i) (center i))))
