;;; init-ivy-counsel.el --- Initialize ivy & counsel configuration  -*- lexical-binding: t; -*-

;; Copyright (C) 2019  Tianhong Chu

;; Author: Tianhong Chu <cthesky13@gmail.com>
;; Keywords: emacs, ivy, counsel, config

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;;; Code:


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
  (set-face-attribute 'ivy-current-match nil
		      :weight 'normal
		      :underline nil
		      :background "#262626"
		      :foreground nil)
  :bind (("C-s" . 'swiper)
	 ("M-x" . 'counsel-M-x)
	 ("C-s" . 'swiper)
	 ("M-x" . 'counsel-M-x)
	 ("C-x C-f" . 'counsel-find-file)
	 ("C-c k" . 'counsel-rg)
	 ("C-c g" . 'counsel-git)
	 ("C-c j" . 'counsel-git-grep)
	 ("C-x l" . 'counsel-locate)
	 ("C-r" . 'counsel-minibuffer-history)
	 ("C-c C-r" . 'ivy-resume))
)


(provide 'init-ivy-counsel)
;;; init-ivy-counsel.el ends here
