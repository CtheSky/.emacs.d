;; company mode for completion
(use-package company
  :config
  (global-company-mode t))

(use-package company-quickhelp
  :config
  (company-quickhelp-mode 1))

;; python
(use-package anaconda-mode
  :config
  (add-hook 'python-mode-hook 'anaconda-mode)
  (add-hook 'python-mode-hook 'anaconda-eldoc-mode))

(use-package company-anaconda
  :init (require 'rx)
  :config
  (add-to-list 'company-backends 'company-anaconda))

;; c indentation 
(setq-default c-basic-offset 4)

;; show paren for emacs-lisp-mode
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; yaml mode
(use-package yaml-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
  (add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode)))

;; magit for git
(use-package magit
  :bind ("C-x g" . 'magit-status))

;; enable slime for common lisp
(setq inferior-lisp-program "clisp.exe")
(setq slime-contribs '(slime-fancy))

;;export
(provide 'init-lang-mode)
