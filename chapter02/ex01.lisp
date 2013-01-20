#! sbcl --script

(format t "(a) ~A~%"
        (equal (+ (- 5 1) (+ 3 7))
               14))

(format t "(b) ~A~%"
        (equal (list 1 (+ 2 3))
               '(1 5)))

(format t "(c) ~A~%"
        (equal (if (listp 1) (+ 1 2) (+ 3 4))
               7))

(format t "(d) ~A~%"
        (equal (list (and (listp 3) t) (+ 1 2))
               '(nil 3)))
