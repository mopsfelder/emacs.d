;; enable standard keys for copy-n-paste
(cua-mode 1)

;; enable deadkeys on graphical mode, see https://bugzilla.redhat.com/show_bug.cgi?id=224626
(require 'iso-transl)

;; scroll one line at a time (less "jumpy" than defaults)
;; http://www.emacswiki.org/emacs/SmoothScrolling
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)
(setq scroll-margin 5)
(setq scroll-step 1)
(setq hscroll-margin 10)
(setq hscroll-step 1)

;; ignore case when opening files with C-x C-f
(setq read-file-name-completion-ignore-case 't)
