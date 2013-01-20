#! sbcl --script

(defun summit-a (lst)
  (remove nil lst)
  (apply #'+ lst))

(defun summit-a-fix (lst)
  (let ((l (remove nil lst)))
    (apply #'+ l)))

(defun summit-b (lst)
  (let ((x (car lst)))
    (if (null x)
      (summit-b (cdr lst))
      (+ x (summit-b (cdr lst))))))

(defun summit-b-fix (lst)
  (if (null lst)
    0
    (let ((x (car lst)))
      (if (null x)
        (summit-b-fix (cdr lst))
        (+ x (summit-b-fix (cdr lst)))))))

(format t "sum '(1 nil 2 nil 3 nil 4): ~A ~A~%"
        (summit-a-fix '(1 nil 2 nil 3 nil 4))
        (summit-b-fix '(1 nil 2 nil 3 nil 4)))
