(defun f (pos xs)
  (let ((x (car xs)))
    (if (null x)
      nil
      (cons (+ pos x) (f (1+ pos) (cdr xs))))))

(defun r-pos+ (xs)
  (f 0 xs))

(defun i-pos+ (xs)
  (let ((n (length xs)))
    (do ((i 0 (1+ i))
         (lst nil (cons (+ i (nth i xs)) lst)))
      ((>= i n) (reverse lst)))))

(defparameter init -1)

(let ((n init))
  (defun g ()
    (incf n))
  (defun r ()
    (setf n init)))

(defun m-pos+ (xs)
  (r)
  (mapcar #'(lambda (x) (+ (g) x)) xs))
