(add-to-list 'load-path user-emacs-directory)

(require 'mypackages)
(require 'task-mgmt)
(require 'appearance)
(require 'backup)
(require 'misc)
(eval-after-load 'ido '(require 'setup-ido))

(byte-recompile-directory user-emacs-directory 0)
