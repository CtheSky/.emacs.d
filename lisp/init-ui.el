;;; init-ui.el --- Initialize ui configurations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; set startup frame size & position
(if (display-graphic-p)
    (setq initial-frame-alist
	  '((top . 0) (left . 800)
            (width . 135) (height . 54)
            )))

;; load theme
(use-package zenburn-theme
  :config
  (load-theme 'zenburn t)
  (zenburn-with-color-variables
    (custom-theme-set-faces
     'zenburn
     `(default ((t (:foreground ,zenburn-fg :background "#3a3a3a")))))))

;; to display winum in mode line
(use-package winum
  :config
  (setq winum-auto-setup-mode-line nil)
  (winum-mode))

;; extra diminish settings
(use-package eldoc :diminish eldoc-mode)

;; mode line config
(use-package spaceline
  :init (which-function-mode 1)
  :config
  (require 'spaceline-config)
  (setq powerline-default-separator 'utf-8) ;; fix separator in terminal: https://github.com/TheBB/spaceline/issues/145
  (spaceline-spacemacs-theme))

;; disable tool & menu & scroll bar
(menu-bar-mode -1)
(tool-bar-mode -1)
(if (display-graphic-p)
    (scroll-bar-mode -1))

;; set cursor type
(setq-default cursor-type 'bar)

;; set font size
(set-face-attribute 'default nil :height 140)

;; toggle line number mode toggle with <f5>
(global-set-key (kbd "<f5>") 'linum-mode)

;; export
(provide 'init-ui)
;;; init-ui.el ends here
