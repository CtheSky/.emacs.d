;; start slime for common lisp
(setq inferior-lisp-program "clisp.exe")
(load "C:\\common lisp\\quicklisp\\slime-helper.el")

;; start company mode
(global-company-mode 1)

;; auto reload changed file
(global-auto-revert-mode t)

;; display line number
(global-linum-mode t)

;; disable backup file & auto save
(setq make-backup-files nil)
(setq auto-save-default nil)

;; disable tool bar & scroll bar
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; set cursor type
(setq cursor-type 'bar)

;; close introduction page
(setq inhibit-splash-screen 1)

;; set font size 
(set-face-attribute 'default nil :height 160)

;; export 
(provide 'init-better-defaults)
