;;; init.el --- Entry point of the whole configuration -*- lexical-binding: t -*-
;;; Commentary:

;; This file bootstraps the configuration, which is divided into
;; a number of other files.

;;; Code:

;;----------------------------------------------------------------------------
;; Setup load path
;;----------------------------------------------------------------------------
(push (expand-file-name "lisp" user-emacs-directory) load-path)
(push (expand-file-name "site-lisp" user-emacs-directory) load-path)

;;----------------------------------------------------------------------------
;; Bootstrap config
;;----------------------------------------------------------------------------
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(require 'init-package) ;; setup elpa & package management

;;----------------------------------------------------------------------------
;; Preferences
;;----------------------------------------------------------------------------
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-lang-mode)

;;----------------------------------------------------------------------------
;; Variables configured via the interactive 'customize' interface
;;----------------------------------------------------------------------------
(when (file-exists-p custom-file)
  (load custom-file))

(provide 'init)
;; Local Variables:
;; coding: utf-8
;; no-byte-compile: t
;; End:
;;; init.el ends here
