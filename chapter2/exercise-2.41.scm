(define (flatmap proc seq)
  (accumulate append '() (map proc seq)))

(define (unique-triples n)
  (flatmap (lambda (i)
             (map (lambda (j)
                    (reverse (cons i j)))
                  (unique-pairs (- i 1))))
           (enumerate-interval 1 n)))
