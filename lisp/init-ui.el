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

;; export
(provide 'init-ui)
