(define (make-rectangle length width)
  (cons length width))

(define (length-rectangle r) (car r))
(define (width-rectangle r) (cdr r))

(define (perimeter-rectangle r)
  (* (+ (length-rectangle r) (width-rectangle r) 2)))

(define (area-rectangle r)
  (* (length-rectangle r) (width-rectangle r)))



