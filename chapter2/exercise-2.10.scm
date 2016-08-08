(define (div-interval x y)
  (if (>= 0 (* (lower-bound y) (upper-bound y)))
      (error "Div error")
      (mul-interval x
                    (make-interval (/ 1. (upper-bound y))
                                   (/ 1. (lower-bound y))))))
