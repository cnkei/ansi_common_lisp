(defun g-cons (a b)
  (cons b a))

(defun g-list (&rest args)
  (if (null args)
    nil
    (cons (g-list (cdr args)) (car args))))
