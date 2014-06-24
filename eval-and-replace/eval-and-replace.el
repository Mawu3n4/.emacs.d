;; Lisp specific defuns -- Magnars @EmacsRocks

(defun eval-and-replace ()
  "Replace the preceding sexp with its value."
  (interactive)
  (backward-kill-sexp)
  (prin1 (eval (read (current-kill 0)))
	 (current-buffer)))

;; (defun increment-number-at-point ()
;;   (interactive)
;;   (insert "(1+ ")
;;   (search-forward-regexp "[^0-9]")
;;   (backward-char)
;;   (insert ")")
;;   (eval-and-replace))
