;; User DEFINED FUNCTIONS
;;
;; Hop between matching parens
(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
   (interactive "p")
   (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
         ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t (error "%s" "Not on a paren"))
        ))

