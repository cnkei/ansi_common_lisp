#!/usr/bin/sbcl --script

(defun listinlistp (xs)
  (if (null xs)
    nil
    (or (listp (car xs))
        (listinlistp (cdr xs)))))

(format t "~A ~A ~A ~A~%"
        (listinlistp nil)
        (listinlistp '(nil 1 2))
        (listinlistp '(1 2 3 4))
        (listinlistp '(1 (1 2) 3 4)))
