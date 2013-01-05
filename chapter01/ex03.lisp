#!/bin/clisp.exe

(setf test-a nil)
(setf test-b '(1))
(setf test-c '(1 2))
(setf test-d '(1 2 3))
(setf test-e '(1 2 3 4))
(setf test-f '(1 2 3 4 5))

;;(cadddr xs)
(defun my-fourth (xs)
  (if (null xs)
    nil
    (if (null (cdr xs))
      nil
      (if (null (cdr (cdr xs)))
        nil
        (car (cdr (cdr (cdr xs))))))))

(defun test (xs)
  (format t "~A: ~A~%"
          xs (equal (my-fourth xs) (fourth xs))))

(test test-a)
(test test-b)
(test test-c)
(test test-d)
(test test-e)
(test test-f)
