;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))


;; Hide startup-message and *scratch* buffer
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-a-message t)


;; Show line numbers in left margin
;(global-linum-mode 1)

;; Show line-number in the mode line
(line-number-mode 1)

;; Show column-number in the mode line
(column-number-mode 1)


;; Justify paragraphs at 72 characters
(setq-default fill-column 72)


;; Font
(add-to-list 'default-frame-alist '(font . "Inconsolata-10"))


;; Frame size
(defun set-frame-size-according-to-resolution ()
  (interactive)
  (if window-system
      (progn
        ;; Default width is 84
        (add-to-list 'default-frame-alist '(width . 90))
        (add-to-list 'default-frame-alist
                     (cons 'height (/ (- (x-display-pixel-height) 0)
                                      (frame-char-height))))
)))
        ;; Subtract the size of the bar before finding the number of lines
(add-hook 'after-init-hook 'set-frame-size-according-to-resolution)


;; Color theme
;; https://github.com/bbatsov/zenburn-emacs
(load-theme 'zenburn t)


;; Whitespace mode
(require 'whitespace)
(setq whitespace-style
      '(face spaces tabs newline space-mark tab-mark newline-mark lines-tail
             trailing empty))

;; Redefine display mapping
;; It solves a problem when a tab occupies exactly one column.
;; This is a copy of the default whitespace-display-mappings without the
;; tab-mark entry.
;; http://emacswiki.org/emacs/WhiteSpace#toc9
(setq whitespace-display-mappings '((space-mark 32 [183] [46])
                                    (space-mark 160 [164] [95])
                                    (space-mark 2208 [2212] [95])
                                    (space-mark 2336 [2340] [95])
                                    (space-mark 3616 [3620] [95])
                                    (space-mark 3872 [3876] [95])
                                    (newline-mark 10 [36 10])))

(global-whitespace-mode 1)


;; Highlight current line
(global-hl-line-mode 1)


;; Highlight right margin limit
(require 'fill-column-indicator)
(setq fci-rule-width 1)
(add-hook 'after-change-major-mode-hook 'fci-mode)


;; Indentation

;; Disable tab character and replace it by spaces
(setq-default indent-tabs-mode nil)


;; Delete trailing whitespaces when save file
(add-hook 'before-save-hook 'delete-trailing-whitespace)


(provide 'appearance)
