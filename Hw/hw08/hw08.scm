(define (next s cur)
    (if (null? s) nil
    (if (= cur (car s)) (next (cdr-stream s) cur)
        s
    )
    )
)
(define (rle s)
  (define (helper s cur num)
    (if (and (not (null? s)) (= cur (car s))) (helper (cdr-stream s) cur (+ num 1))
        (list cur num)
    )
  )
    (if (null? s) nil
    (cons-stream (helper s (car s) 0) (rle (next s (car s)))))

)

(define (subset s sub num)

        (if (or (null? s) (< (car s) num)) sub
        (subset (cdr-stream s) (append sub (list (car s))) (car s))

        )

)
(define (next_2 s cur)
    (if (null? s) nil
        (if (>= (car s) cur) (next_2 (cdr-stream s) (car s)) s
        )
    )
)
(define (group-by-nondecreasing s)
    (if (null? s) nil
        (cons-stream (subset (cdr-stream s) (list (car s)) (car s)) (group-by-nondecreasing (next_2 s (car s))))
    )
    )


(define finite-test-stream
    (cons-stream 1
        (cons-stream 2
            (cons-stream 3
                (cons-stream 1
                    (cons-stream 2
                        (cons-stream 2
                            (cons-stream 1 nil))))))))

(define infinite-test-stream
    (cons-stream 1
        (cons-stream 2
            (cons-stream 2
                infinite-test-stream))))

