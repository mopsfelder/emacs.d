;; c
(add-hook 'c-mode-hook
	  (lambda ()
	    (setq c-default-style "linux"
		  c-block-comment-prefix "* "
		  indent-tabs-mode t
		  c-basic-offset 8
		  c-indent 8)))

;; python
(add-hook 'python-mode-hook
	  (lambda ()
	    (setq indent-tabs-mode nil
		  python-basic-offset 4
		  python-indent 4)))

;; sh
(add-hook 'sh-mode-hook
	  (lambda ()
	    (setq indent-tabs-mode nil
		  sh-basic-offset 4
		  sh-indent 4)))

;; auto insert close bracket pairs, see http://ergoemacs.org/emacs/emacs_insert_brackets_by_pair.html
(electric-pair-mode 1)
(setq electric-pair-pairs '(
                            (?\" . ?\")
                            (?\' . ?\')
                            (?\{ . ?\})
                            ))

;; delete trailing whitespaces when save file
(add-hook 'before-save-hook 'delete-trailing-whitespace)
