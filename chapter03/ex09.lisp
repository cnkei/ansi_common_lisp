(defun longest-path (start end net)
  (bfs end (list (list start)) net nil))

(defun bfs (end queue net max)
  (if (null queue)
    max
    (let ((path (car queue)))
      (let ((node (car path)))
        (if (and (eql node end)
                 (> (length path) (length max)))
          (setf max (reverse path)))
        (bfs end
             (append (cdr queue)
                     (new-paths path node net))
             net
             max)))))

(defun new-paths (path node net)
  (mapcar #'(lambda (n)
              (cons n path))
          (set-difference (cdr (assoc node net)) path)))
