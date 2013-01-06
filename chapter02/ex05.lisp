#!/bin/clisp.exe

(defun enigma (x)
  (and (not (null x))
       (or (null (car x))
           (enigma (cdr x)))))

(format t "(a) ~A ~A ~A ~A~%"
        (equal (enigma nil) nil)
        (equal (enigma '(nil 1 2)) t)
        (equal (enigma '(1 2 nil)) t)
        (equal (enigma '(1 2 3 4)) nil))

(defun mystery (x y)
  (if (null y)
    nil
    (if (eql (car y) x)
      0
      (let ((z (mystery x (cdr y))))
        (and z (+ z 1))))))

(format t "(b) ~A ~A ~A ~A~%"
        (equal (mystery 1 nil) nil)
        (equal (mystery 1 '(nil 1 2)) 1)
        (equal (mystery 2 '(1 2 nil)) 1)
        (equal (mystery 5 '(1 2 3 4)) nil))
