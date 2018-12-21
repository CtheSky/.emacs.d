;; keybind for neotree
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; enable ido mode
(require 'ido)
(ido-mode t)

;; enable company mode
(global-company-mode t)

;; auto reload changed file
(global-auto-revert-mode t)

;; toggle line number mode toggle with <f5>
(global-set-key (kbd "<f5>") 'linum-mode)

;; disable backup file & auto save
(setq make-backup-files nil)
(setq auto-save-default nil)

;; disable tool & menu & scroll bar
(menu-bar-mode -1)
(tool-bar-mode -1)
(if (display-graphic-p)
    (progn
      (scroll-bar-mode -1)))

;; highlight current line
(global-hl-line-mode t)

;; set cursor type
(setq-default cursor-type 'bar)

;; close introduction page
(setq inhibit-splash-screen 1)

;; set font size 
(set-face-attribute 'default nil :height 160)

;; export 
(provide 'init-better-defaults)
