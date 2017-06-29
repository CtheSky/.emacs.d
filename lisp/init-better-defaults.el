;; keybind for ace-window, faster window switching
(global-set-key (kbd "<f4>") 'ace-window)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))

;; enable ido mode
(require 'ido)
(ido-mode t)

;; enable company mode
(global-company-mode t)

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

;; highlight current line
(require 'highlight-current-line)
(global-hl-line-mode t)
(setq highlight-current-line-globally t)
(setq highlight-current-line-high-faces nil)
(setq highlight-current-line-whole-line nil)
(setq hl-line-face (quote highlight))

;; set cursor type
(setq cursor-type 'bar)

;; close introduction page
(setq inhibit-splash-screen 1)

;; set font size 
(set-face-attribute 'default nil :height 160)

;; export 
(provide 'init-better-defaults)
