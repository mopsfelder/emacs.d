;; indentation settings
(defun my-code-indentation ()
  (c-set-offset 'substatement-open 0)

  ; c
  (setq-default c-default-style "linux")
  (setq-default c-block-comment-prefix "* ")
  (setq-default c-basic-offset 8)
  (setq-default c-indent-level 8)

  ; sh
  (setq-default sh-basic-offset 4)
  (setq-default sh-indent-level 4)

  ; tcl
  (setq-default tcl-indent-level 8)

  ; python
  (setq-default python-basic-offset 4)
  (setq-default python-indent-level 4)

  ; tab default
  (setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60))
  (setq tab-width 8)
  (setq indent-tabs-mode t))

;; set indentation only when in prog-mode
(add-hook 'prog-mode-hook 'my-code-indentation)

;; auto insert close bracket pairs, see http://ergoemacs.org/emacs/emacs_insert_brackets_by_pair.html
(electric-pair-mode 1)
(setq electric-pair-pairs '(
                            (?\" . ?\")
                            (?\' . ?\')
                            (?\{ . ?\})
                            ))

;; delete trailing whitespaces when save file
(add-hook 'before-save-hook 'delete-trailing-whitespace)
