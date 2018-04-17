(defun mergesort (lst)
    (if (equal (length lst) 1) 
        lst
        (let ((half (truncate (/ (length lst) 2))))
            (merge (type-of lst)
                (mergesort (subseq lst 0 half))
                (mergesort (subseq lst half))
                #'<
            )
        )
    )
)

(let ((n (read))
      (lst))
  (setf lst
        (do ((i 0 (+ i 1))
             (tmp nil))
          ((>= i n)
           (reverse tmp))
          (setf tmp (cons (read) tmp))))
  (format t "~{~A ~}~%" (mergesort lst)))
