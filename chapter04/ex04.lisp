(defstruct (node (:print-object
                   (lambda (n s)
                     (format s "#<~A>" (node-elt n)))))
  elt (l nil) (r nil))

(defun bst->list (root)
  (if root
    (append (bst->list (node-r root))
            (list (node-elt root))
            (bst->list (node-l root)))))
