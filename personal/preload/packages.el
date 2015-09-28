(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; list of packages to be installed
(defvar my-packages '(auto-complete
		      fill-column-indicator
		      magit
                      yaml-mode
		      zenburn-theme))

;; install packages if not installed yet
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
