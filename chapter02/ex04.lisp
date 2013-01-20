#! sbcl --script

(defun larger (x y)
  (if (> x y)
    x
    y))

(defun test (x y)
  (format t "~A -> ~A~%"
          (list x y)
          (larger x y)))

(test 1 2)
(test -1 -1)
(test -3 -10)
