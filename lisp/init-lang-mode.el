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
(global-set-key (kbd "C-x g") 'magit-status)

;; enable slime for common lisp
(setq inferior-lisp-program "clisp.exe")
(setq slime-contribs '(slime-fancy))

;; enable ein for ipython notebook
(require 'ein)
(require 'ein-loaddefs)
(require 'ein-notebook)
(require 'ein-subpackages)

;; fix python shell bug in emacs-25
;; see: https://github.com/jorgenschaefer/elpy/issues/887
(setq python-shell-completion-native-enable nil)

;; set markdown parser command
(custom-set-variables
 '(markdown-command "pandoc"))

;;export
(provide 'init-lang-mode)
