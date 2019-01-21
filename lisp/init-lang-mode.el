(use-package flycheck
  :init
  (global-flycheck-mode))

;; company mode for completion
(use-package company
  :config
  (global-company-mode t))

(use-package company-quickhelp
  :config
  (company-quickhelp-mode 1))

;; python
(use-package anaconda-mode
  :config
  (add-hook 'python-mode-hook 'anaconda-mode)
  (add-hook 'python-mode-hook 'anaconda-eldoc-mode))

(use-package company-anaconda
  :init (require 'rx)
  :config
  (add-to-list 'company-backends 'company-anaconda))

(use-package pyvenv
  :config
  (setenv "WORKON_HOME" "~/miniconda3/envs")
  (pyvenv-mode 1)
  (pyvenv-tracking-mode 1))

;; c
(use-package irony
  :config
  (add-hook 'c++-mode-hook 'irony-mode)
  (add-hook 'c-mode-hook 'irony-mode)
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options))

(use-package irony-eldoc
  :config
  (add-hook 'irony-mode-hook #'irony-eldoc))

(use-package company-irony
  :config
  (add-to-list 'company-backends 'company-irony))

;; (use-package flycheck-irony
;;   :config
;;   (add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

;; show paren for emacs-lisp-mode
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; protobuf mode
(use-package protobuf-mode)

;; yaml mode
(use-package yaml-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
  (add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode)))

;; dockerfile mode
(use-package dockerfile-mode
  :config
  (add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode)))

;; magit for git
(use-package magit
  :bind ("C-x g" . 'magit-status)
  :config (setq magit-section-visibility-indicator nil))

;; org mode
(use-package org
  :bind (("C-c l" . 'org-insert-link)
	 ("C-c a" . 'org-agenda)
	 ("C-c c" . 'org-capture)))

;; enable slime for common lisp
(setq inferior-lisp-program "clisp.exe")
(setq slime-contribs '(slime-fancy))

;; dictionary if on osx
(use-package osx-dictionary
  :if (eq system-type 'darwin)
  :bind ("C-c d" . 'osx-dictionary-search-word-at-point))

;; markdown mode
(use-package impatient-mode)
(use-package markdown-mode
  :init (setq markdown-command "pandoc")
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :bind (:map markdown-mode-command-map
	 ("l" . markdown-live-preview-by-impatient-mode)))

(defun markdown-live-preview-by-impatient-mode ()
  (interactive)
  (httpd-start)
  (impatient-mode)
  (imp-set-user-filter
   (lambda (buffer)
     (princ (with-current-buffer buffer
	      (format "<!DOCTYPE html><html>\
                         <title>Impatient Markdown</title>\
                         <xmp theme=\"united\" style=\"display:none;\"> %s  </xmp>\
                         <script src=\"http://strapdownjs.com/v/0.2/strapdown.js\"></script>\
                       </html>" (buffer-substring-no-properties (point-min) (point-max))))
	    (current-buffer))))
  (browse-url (concat "http://localhost:8080/imp/live/" (buffer-name (current-buffer)))))

;;export
(provide 'init-lang-mode)
