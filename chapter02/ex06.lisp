#!/usr/bin/sbcl --script

(format t "(a) > (car (x (cdr '(a (b c) d)))) = ~A~%"
        (car (car (cdr '(a (b c) d)))))

(format t "(b) > (x 13 (/ 1 0)) = ~A~%"
        (or 13 (/ 1 0)))

(format t "(c) > (x #'list 1 nil) = ~A~%"
        (apply #'list 1 nil))
