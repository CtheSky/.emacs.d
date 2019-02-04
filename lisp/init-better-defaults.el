;;; init-better-defaults.el --- Initialize various personal things -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(fset 'yes-or-no-p 'y-or-n-p)

(use-package try)
(use-package which-key :config (which-key-mode))

;; auto reload changed file
(global-auto-revert-mode t)

;; disable backup file & auto save
(setq make-backup-files nil)
(setq auto-save-default nil)

;; TERMINAL MAPPINGS TO SUPPORT ITERM2 FOR MAC
;; https://www.emacswiki.org/emacs/iTerm2
(let ((map (if (boundp 'input-decode-map)
               input-decode-map
	     function-key-map)))
  (define-key map "\e[1;P9"  (kbd "s-p")))

;; export
(provide 'init-better-defaults)
;;; init-better-defaults ends here
