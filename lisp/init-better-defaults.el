;; keybind for neotree
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; ivy & swiper & counsel
(ivy-mode 1)
(setq ivy-count-format "(%d/%d) ")
(setq ivy-format-function 'ivy-format-function-line)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "C-c k") 'counsel-rg)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-x l") 'counsel-locate)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)

;; (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)


;; enable company mode
(global-company-mode t)

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
