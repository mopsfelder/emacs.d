;; disable startup screen
(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-a-message t)

;; hide menu, tool and scroll bars
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; function to set window size according to screen resolution
(defun set-frame-size-according-to-resolution()
  (interactive)
  (if window-system
      (progn
	(add-to-list 'default-frame-alist '(width . 90))
	(add-to-list 'default-frame-alist
		     (cons 'height (/ (- (x-display-pixel-height) 0)
				      (frame-char-height)))))))

;; set window size
(add-hook 'after-init-hook 'set-frame-size-according-to-resolution)

;; cursor settings
(blink-cursor-mode 0)
(set-face-background 'cursor "green")
(setq-default cursor-type 'hbar)

;; highlight right margin limit
(require 'fill-column-indicator)
(setq fci-rule-width 1)
(add-hook 'after-change-major-mode-hook 'fci-mode)

;; set font
(add-to-list 'default-frame-alist '(font . "Inconsolata-10"))

;; color theme
(load-theme 'zenburn t)
