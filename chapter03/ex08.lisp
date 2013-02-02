(defun showdots (xs)
  (format t "~A~%" (withdots xs)))

(defun withdots (xs)
  (if (consp xs)
    (format nil "(~A . ~A)" (withdots (car xs)) (withdots (cdr xs)))
    (format nil "~A" xs)))
