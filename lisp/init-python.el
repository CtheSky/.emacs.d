;;; init-python.el --- Initialize python configuration  -*- lexical-binding: t; -*-

;; Copyright (C) 2019  Tianhong Chu

;; Author: Tianhong Chu <cthesky13@gmail.com>
;; Keywords: emacs, python, config

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

(use-package gud
  :defer t
  :config
  (setq gud-pdb-command-name "python -m pdb"))

(use-package anaconda-mode
  :diminish anaconda-mode
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

(provide 'init-python)
;;; init-python.el ends here
