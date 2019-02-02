;;; init-package.el --- Initialize package configurations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Setup package management
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(setq package-enable-at-startup nil)
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(setq use-package-always-ensure t)

(require 'use-package)

;; Required by `use-package'
(use-package diminish)
(use-package bind-key)

(provide 'init-package)
;;; init-package.el ends here
