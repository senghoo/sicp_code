(define (exponentiation? x)
  (and (pair? x) (eq? (car x) '**)))

(define (base s) (cadr s))
(define (exponent s) (caddr s))

(define (make-exponentiation base exp)
  (cond ((=number? base 0) 0)
        ((=number? exp 0) 1)
        ((=number? exp 1) base)
        (else (list '** base exp))))

(define (deriv exp var)
  (cond ((number? exp) 0)
        ((variable? exp) (if (same-variable? exp var) 1 0)) ((sum? exp) (make-sum (deriv (addend exp) var)
                                                                                  (deriv (augend exp) var)))
        ((product? exp)
         (make-sum
          (make-product (multiplier exp)
                        (deriv (multiplicand exp) var))
          (make-product (deriv (multiplier exp) var)
                        (multiplicand exp))))
        ((exponentiation? exp)
         (make-product (make-product (exponent exp)
                                     (make-exponentiation (base exp) (make-sum (exponent exp) -1)))
                       (deriv (base exp) var)))
        (else
         (error "unknown expression type: DERIV" exp))))


