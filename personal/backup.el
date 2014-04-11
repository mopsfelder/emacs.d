;; Backup settings
(setq backup-directory-alist `(("." . "~/.emacs.d/saves")))
(setq backup-by-copying t)
(setq delete-old-versions t)
(setq kept-new-versions 6)
(setq kept-old-versions 2)
(setq version-control t)


;; Stop creating those #autosave# files
(setq auto-save-default nil)


;; Save cursor position when saving files
(require 'saveplace)
(setq save-place-file (expand-file-name "places" savefile-dir))
(setq-default save-place t)
