(defun new-union (x y)
  (let ((rev-x (reverse x)))
    (do ((lst-b y (cdr lst-b))
         (lst-a rev-x (adjoin (car lst-b) lst-a)))
        ((null lst-b) (reverse lst-a)))))
