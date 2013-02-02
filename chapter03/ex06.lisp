(defun g-cons (a b)
  (cons b a))

(defun g-list (&rest args)
  (if (null args)
    nil
    (cons (apply #'g-list (cdr args)) (car args))))

(defun g-length (xs)
  (if (null xs)
    0
    (1+ (g-length (car xs)))))

(defun g-member (x xs)
  (do ((lst xs (car lst)))
    ((or (null lst) (equal x (cdr lst))) lst)))
