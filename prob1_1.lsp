; for(i = 2; i < n / 2; i++) {
;     if(n % i == 0)
;         n is not a prime
; }
;

(defvar check 1)

(defun prime(x) 
    (setq check 1)
    (loop for n from 2 to (/ x 2) ;(mod x n)
        if (= (mod x n) 0) 
            do (setq check 0)   
        
    ) 
    (if (= check 1) 
        ;(write-line "is a prime number")
        ;(write-line "is not a prime") 
        ;~D decimal integer ~C character ~% next line ~F float ~E exponential 
        (format t "~D is prime.~%" x)
        (format t "~D is not prime.~%" x)
    )
)

(prime 2)
(prime 239)
(prime 999)
(prime 17)


