(defstruct (node (:print-object
                   (lambda (n s) (format s "#<~A>" (node-elt n)))))
  elt (l nil) (m nil) (r nil))

(defun copy-tri-tree (root)
  (if (null root)
    nil
    (make-node :elt (node-elt root)
               :l (copy-tri-tree (node-l root))
               :m (copy-tri-tree (node-m root))
               :r (copy-tri-tree (node-r root)))))

(defun search-tri-tree (obj root)
  (if (null root)
    nil
    (if (eql obj (node-elt root))
      t
      (or (search-tri-tree obj (node-l root))
          (search-tri-tree obj (node-m root))
          (search-tri-tree obj (node-r root))))))
