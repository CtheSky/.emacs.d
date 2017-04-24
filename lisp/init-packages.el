(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))
  

;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar my/packages '(
		;; --- Auto-completion ---
		company
		company-emacs-eclim
		;; --- Better Editor ---
		hungry-delete
		swiper
		counsel
		smartparens
		;; --- Major Mode ---
		js2-mode
		markdown-mode
		ein
		eclim
		;; --- Minor Mode ---
		nodejs-repl
		exec-path-from-shell
		highlight-current-line
		nyan-mode
		gradle-mode
		magit
		;; --- Themes ---
		monokai-theme
		solarized-theme
		) "Default packages")

(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
  (loop for pkg in my/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (my/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg my/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

(defun open-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-init-file)

(provide 'init-packages)
