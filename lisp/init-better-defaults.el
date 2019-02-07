;;; init-better-defaults.el --- Initialize various personal things -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; y or n
(fset 'yes-or-no-p 'y-or-n-p)

;; auto reload changed file
(global-auto-revert-mode t)

;; disable backup file & auto save
(setq make-backup-files nil)
(setq auto-save-default nil)

;; export
(provide 'init-better-defaults)
;;; init-better-defaults ends here
