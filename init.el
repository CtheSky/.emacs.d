(setq inhibit-startup-message t)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;; Bootstrap 'use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(setq use-package-always-ensure t)

(use-package try)
(use-package which-key :config (which-key-mode))

(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-lang-mode)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
