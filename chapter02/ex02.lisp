#!/bin/clisp.exe

(format t "~A ~A ~A~%"
        (cons 'a '(b c))
        (cons 'a (cons 'b '(c)))
        (cons 'a (cons 'b (cons 'c nil))))
