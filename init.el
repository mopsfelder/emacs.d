;; This must come before configuration of installed packages.
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; list of packages to be installed
(defvar my-packages '(auto-complete
		      fill-column-indicator
		      helm
		      magit
                      yaml-mode
		      zenburn-theme))

;; install packages if not installed yet
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; configuration directory, say ~/.emacs.d
(defvar conf-dir (file-name-directory load-file-name))

;; directory housing configuration files to be loaded
(defvar personal-dir (expand-file-name "personal" conf-dir))

;; directory housing saveplaces
(defvar savefile-dir (expand-file-name "saves" conf-dir))

;; load personal settings
(mapc 'load (directory-files personal-dir 't "^[^#].*el$"))
