;;; init.el --- Entry point of the whole configuration -*- lexical-binding: t -*-
;;; Commentary:

;; This file bootstraps the configuration, which is divided into
;; a number of other files.

;;; Code:

;;----------------------------------------------------------------------------
;; Setup user info
;;----------------------------------------------------------------------------
(setq user-full-name "Tianhong Chu")
(setq user-mail-address "cthesky13@gmail.com")

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
(require 'init-benchmark-startup-time)

;;----------------------------------------------------------------------------
;; Preferences
;;----------------------------------------------------------------------------
(require 'init-ui)
(require 'init-utils)
(require 'init-key-map)
(require 'init-env-variables)
(require 'init-projectile)
(require 'init-treemacs)
(require 'init-shell)
(require 'init-term)
(require 'init-magit)
(require 'init-ivy-counsel)
(require 'init-window-control)
(require 'init-better-defaults)
(require 'init-flycheck)
(require 'init-company)
(require 'init-dashboard)
(require 'init-org)
(require 'init-python)
(require 'init-c)
(require 'init-lua)
(require 'init-protobuf)
(require 'init-yaml)
(require 'init-markdown)
(require 'init-osx-dictionary)

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
