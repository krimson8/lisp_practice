;;; this is a test file of lisp language 
;;; implementation of fibonacci

(DEFUN FIB(n)
    (IF (< n 2)
        n
        (+ (FIB (- n 1)) (FIB (- n 2)))
    )
)

(write (FIB 20))
(write-line "Hello World")
