;; Setup package management
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Bootstrap 'use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(setq use-package-always-ensure t)

;; load init files
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-lang-mode)

;; separate custom variables
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
