;; enable slime for common lisp
(setq inferior-lisp-program "clisp.exe")
(load "C:\\common lisp\\quicklisp\\slime-helper.el")

;; enable ein for ipython notebook
(require 'ein)
(require 'ein-loaddefs)
(require 'ein-notebook)
(require 'ein-subpackages)

;;export
(provide 'init-lang-mode)
