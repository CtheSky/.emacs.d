
;; enable slime for common lisp
(setq inferior-lisp-program "clisp.exe")
(load "C:\\common lisp\\quicklisp\\slime-helper.el")

;; enable ein for ipython notebook
(require 'ein)
(require 'ein-loaddefs)
(require 'ein-notebook)
(require 'ein-subpackages)

;; enable eclime for java eclipse IDE
(require 'eclim)
(add-hook 'java-mode-hook 'eclim-mode)
(define-key eclim-mode-map (kbd "C-c C-c") 'eclim-problems-correct)
(require 'company-emacs-eclim)
(company-emacs-eclim-setup)

;; enable gradle for building java app
(require 'gradle-mode)
(add-hook 'java-mode-hook '(lambda() (gradle-mode 1)))
(defun build-and-run ()
  (interactive)
  (gradle-run "build run"))
(define-key gradle-mode-map (kbd "C-c C-r") 'build-and-run)

;; set markdown parser command
(custom-set-variables
 '(markdown-command "pandoc"))

;;export
(provide 'init-lang-mode)
