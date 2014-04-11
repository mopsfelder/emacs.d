;; configuration directory, say ~/.emacs.d
(defvar conf-dir (file-name-directory load-file-name))

;; directory housing configuration files to be loaded
(defvar personal-dir (expand-file-name "personal" conf-dir))

;; directory housing files to be loaded before others
(defvar personal-preload-dir (expand-file-name "preload" personal-dir))

;; directory housing saveplaces
(defvar savefile-dir (expand-file-name "saves" conf-dir))

;; load personal settings
(mapc 'load (directory-files personal-preload-dir 't "^[^#].*el$"))
(mapc 'load (directory-files personal-dir 't "^[^#].*el$"))
