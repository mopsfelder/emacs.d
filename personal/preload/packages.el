(require 'package)
(add-to-list 'package-archives
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; list of packages to be installed
(defvar my-packages '(fill-column-indicator
		      python-mode
		      python-pep8
		      python-pylint
		      zenburn-theme))

;; install packages if not installed yet
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
