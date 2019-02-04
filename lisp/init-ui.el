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

;; mod line
(use-package powerline
  :config
  (powerline-default-theme))

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
