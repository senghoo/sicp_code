(define (make-mobile left right)
  (list left right))
(define (make-branch length structure)
  (list length structure))


(define (left-branch m) (car m))
(define (right-branch m) (cadr m))

(define (branch-length b) (car b))
(define (branch-structure b) (cadr b))
(define (mobile? b) (pair? (branch-structure b)))

(define (branch-weight b)
  (if (mobile? b)
      (total-weight (branch-structure b))
      (branch-structure b)))

(define (total-weight m)
  (+ (branch-weight (left-branch m))
     (branch-weight (right-branch m))))


(define (balance? m)
  (let ((l (left-branch m))
        (r (right-branch m)))
    (and (= (* (branch-length l) (branch-weight l))
            (* (branch-length r) (branch-weight r)))
         (if (branch? r) (balance? r) #t)
         (if (branch? l) (balance? l) #t))))
