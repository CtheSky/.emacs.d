;; c indentation 
(setq-default c-basic-offset 4)

;; show paren for emacs-lisp-mode
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; octave mode
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))
(add-hook 'octave-mode-hook
          (lambda ()
            (abbrev-mode 1)
            (auto-fill-mode 1)
            (if (eq window-system 'x)
                (font-lock-mode 1))))

;; magit for git
(use-package magit
  :bind ("C-x g" . 'magit-status))

;; enable slime for common lisp
(setq inferior-lisp-program "clisp.exe")
(setq slime-contribs '(slime-fancy))

;;export
(provide 'init-lang-mode)
