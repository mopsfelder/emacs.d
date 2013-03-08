;; Task management settings

(require 'org)

;; Set my main gtd file
(defvar gtd-file
  (quote "~/Documents/gtd/gtd.org")
  "Main GTD file")

;; Specify which files store tasks
(add-to-list 'org-agenda-files gtd-file)

;; Show blocked items in a dimmed font
(setq org-agenda-dim-blocked-tasks t)

;; Open gtd file
(defun open-gtd-file ()
  (interactive)
  (find-file gtd-file))

;; Open the log view of the org-agenda-mode showing the tasks that
;; reference any time in the current week
(defun open-org-log ()
  (interactive)
  (org-agenda-list)
  (org-agenda-log-mode)
  (org-agenda-week-view))

(defun my-toggle-window (name cmd)
  "Toggle window  <name> and execute command <cmd> if <name> is not open"
  (setq buf (buffer-name))
  (if (equal buf name)
      (progn
        (delete-window)
        (kill-buffer buf))
    (eval cmd)))

(defun toggle-agenda-list ()
  (interactive)
  (my-toggle-window "*Org Agenda*" '(org-agenda-list)))

(defun toggle-todo-list ()
  (interactive)
  (my-toggle-window "*Org Agenda*" '(org-todo-list)))

(defun toggle-org-log ()
  (interactive)
  (my-toggle-window "*Org Agenda*" '(open-org-log)))

;; Keyboard shortcuts
(global-set-key (kbd "<f5>") 'open-gtd-file)

;; Enable some shortcuts only after opening org-mode for the first time
(add-hook 'org-mode-hook
          (lambda ()
            (global-set-key (kbd "<f6>")  'toggle-agenda-list)
            (global-set-key (kbd "<f7>")  'toggle-todo-list)
            (global-set-key (kbd "<f8>")  'toggle-org-log)
            (local-set-key  (kbd "<f9>")  'org-todo)
            (local-set-key  (kbd "<f10>") 'org-schedule)
            (local-set-key  (kbd "<f11>") 'org-clock-in)
            (global-set-key (kbd "<f12>") 'org-clock-out)
            ))

;; Make the some shortcuts available during org-agenda-mode
(add-hook 'org-agenda-mode-hook
          (lambda ()
            (local-set-key (kbd "<f9>")  'org-agenda-todo)
            (local-set-key (kbd "<f10>") 'org-agenda-schedule)
            (local-set-key (kbd "<f11>") 'org-agenda-clock-in)
            (local-set-key (kbd "<f12>") 'org-agenda-clock-out)
            ))

(provide 'task-mgmt)
