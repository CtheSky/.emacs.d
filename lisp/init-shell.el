;;; init-shell.el --- Initialize shell configuration  -*- lexical-binding: t; -*-

;; Copyright (C) 2019  Tianhong Chu

;; Author: Tianhong Chu <cthesky13@gmail.com>
;; Keywords: emacs, shell, config

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

(use-package shell
  :after company
  :hook (shell-mode . my/shell-mode-hook)
  :bind
  (:map shell-mode-map
        ("C-r" . 'counsel-shell-history)
	("TAB" . 'company-manual-begin))
  :config
  (defun my/shell-mode-hook ()
    (setq comint-input-ring-file-name "~/.zsh_history")
    (setq comint-input-ring-separator "\n: \\([0-9]+\\):\\([0-9]+\\);")
    (comint-read-input-ring t)))


(provide 'init-shell)
;;; init-shell.el ends here
