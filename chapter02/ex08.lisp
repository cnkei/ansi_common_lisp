#!/usr/bin/sbcl --script

(defun printdots-i (n)
  (dotimes (x n)
    (format t ".")))

(defun printdots-r (n)
  (if (zerop n)
    nil
    (progn
      (format t ".")
      (printdots-r (1- n)))))

(printdots-i 1)
(format t "~%")
(printdots-r 2)
(format t "~%")

(defun a-times-i (xs)
  (let ((n 0))
    (dolist (x xs)
      (if (equal x 'a) (incf n)))
    n))

(defun a-times-r (xs)
  (if (null xs)
    0
    (+ (a-times-r (cdr xs))
       (if (equal (car xs) 'a)
         1
         0))))

(format t "~A'a in '(a b c a d)~%"
        (a-times-i '(a b c a d)))

(format t "~A'a in '(a b c a d)~%"
        (a-times-r '(a b c a d)))
