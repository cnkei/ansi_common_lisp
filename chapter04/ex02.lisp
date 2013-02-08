(defun reduce-copy-list (xs)
  (reduce #'cons xs :from-end t :initial-value nil))

(defun reduce-reverse (xs)
  (reduce #'(lambda (x y) (cons y x)) xs :initial-value nil))
