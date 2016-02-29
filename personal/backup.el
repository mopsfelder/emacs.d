;; Backup settings
(setq backup-directory-alist `(("." . "~/.emacs.d/saves")))
(setq backup-by-copying t)
(setq delete-old-versions t)
(setq kept-new-versions 6)
(setq kept-old-versions 2)
(setq version-control t)


;; Stop creating those #autosave# files
(setq auto-save-default nil)


;; Remember cursor position
(unless (file-exists-p savefile-dir)
  (make-directory savefile-dir))
(setq save-place-file (expand-file-name "places" savefile-dir))
(if (version< emacs-version "25.0")
    (progn
      (require 'saveplace)
      (setq-default save-place t))
  (save-place-mode 1))
