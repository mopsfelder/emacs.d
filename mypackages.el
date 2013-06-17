(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(
                      fill-column-indicator
                      ack-and-a-half
                      auto-complete
                      autopair
                      expand-region
                      eieio
                      tabulated-list
                      gh
                      gist
                      idle-highlight-mode
                      logito
                      magit
                      magithub
                      paredit
                      pcache
                      projectile
                      pymacs
                      python
                      python-mode
                      rainbow-delimiters
                      rainbow-mode
                      s
                      solarized-theme
                      volatile-highlights
                      yasnippet
                      yasnippet-bundle
                      zenburn-theme
                      )
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'mypackages)
