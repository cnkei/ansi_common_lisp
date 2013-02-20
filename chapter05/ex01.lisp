(defparameter y '(1 2 3))

(format t "~A == ~A~%"

(let ((x (car y)))
  (cons x x))

((lambda (x) (cons x x)) (car y))

)

(defparameter x '(1 2 3))
(defparameter z 2)

(format t "~A == ~A~%"

(let* ((w (car x))
       (y (+ w z)))
  (cons w y))

((lambda (w) ((lambda (y) (cons w y)) (+ w z))) (car x))

)
