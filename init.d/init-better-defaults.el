(fset 'yes-or-no-p 'y-or-n-p)

(use-package try)
(use-package which-key :config (which-key-mode))

;; ace-window to switch between windows
(use-package ace-window :init (global-set-key [remap other-window] 'ace-window))

;; used by counsel-M-x
(use-package smex)

;; ivy & swiper & counsel
(use-package counsel
  :config
  (ivy-mode 1)
  (setq ivy-count-format "(%d/%d) ")
  (setq ivy-format-function 'ivy-format-function-line)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  :bind (("C-s" . 'swiper)
	 ("M-x" . 'counsel-M-x)
	 ("C-s" . 'swiper)
	 ("M-x" . 'counsel-M-x)
	 ("C-x C-f" . 'counsel-find-file)
	 ("<f1> f" . 'counsel-describe-function)
	 ("<f1> v" . 'counsel-describe-variable)
	 ("<f1> l" . 'counsel-find-library)
	 ("C-c k" . 'counsel-rg)
	 ("C-c g" . 'counsel-git)
	 ("C-c j" . 'counsel-git-grep)
	 ("C-x l" . 'counsel-locate)
	 ("C-r" . 'counsel-minibuffer-history)
	 ("C-c C-r" . 'ivy-resume)
	 ("<f6>" . 'ivy-resume))
)

;; projectile
(use-package projectile
  :config
  (projectile-global-mode)
  (setq projectile-completion-system 'ivy)
  :bind
  ("C-c p" . 'projectile-command-map)
)

;; auto reload changed file
(global-auto-revert-mode t)

;; toggle line number mode toggle with <f5>
(global-set-key (kbd "<f5>") 'linum-mode)

;; disable backup file & auto save
(setq make-backup-files nil)
(setq auto-save-default nil)

;; disable tool & menu & scroll bar
(menu-bar-mode -1)
(tool-bar-mode -1)
(if (display-graphic-p)
    (progn
      (scroll-bar-mode -1)))

;; highlight current line
(global-hl-line-mode t)

;; set cursor type
(setq-default cursor-type 'bar)

;; close introduction page
(setq inhibit-splash-screen 1)

;; set font size 
(set-face-attribute 'default nil :height 160)

;; export 
(provide 'init-better-defaults)
