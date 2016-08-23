(define (deep-reverse lst)
  (if (pair? lst)
      (reverse (map deep-reverse lst))
      lst))
