; (defun prime(x)
;     (setq check 1)
;     (loop for n from 2 to (/ x 2) ;(mod x n)
;         if (= (mod x n) 0)
;             do (setq check 0)
;
;     )
;     (if (= check 1)
;         ;(write-line "is a prime number")
;         ;(write-line "is not a prime")
;         ;~D decimal integer ~C character ~% next line ~F float ~E exponential
;         (format t "~D is prime.~%" x)
;         (format t "~D is not prime.~%" x)
;     )
; )
(defvar ququq)
(defvar ans)
(defvar a)
(defvar b)
(defvar check 0)
(defvar len)
(defvar limit 0)

(defun palindrome (elements)
    (setq len (length elements))
    ;(format t "Length is ~D ~%~%" len)
    (if (= (mod len 2) 0)
        (setq limit (/ len 2))
        (setq limit (+ (/ len 2) 0.5))
    )

    ;(print limit)
    
    (setq ququq (reverse elements))
    (setq ans elements)

    (loop for x from 1 to limit
        do (setq a (car elements))
        do (setq b (car ququq))

        ;do (format t "~%----------~%")
        ;do (print a)
        ;do (print b)

        if (not (equal a b))
            do (setq check 1)
        
        ;do (print check)
        ;do (format t "~%----------~%")
        do (setq elements (cdr elements))
        do (setq ququq (cdr ququq))
    )

    (if (= check 1)
        (format t "Not palindrome ~%")
        (format t "Palindrome ~%")
    )
    (setq check 0)
)

(palindrome '(1 2 3 3 2 1))
(palindrome '(a b c))
(palindrome '(m a d a m))
(palindrome '(cat dog))
(palindrome '(cat dog bird bird dog cat))


