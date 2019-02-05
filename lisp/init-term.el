;;; init-term.el --- Initialize term configuration   -*- lexical-binding: t; -*-

;; Copyright (C) 2019  Tianhong Chu

;; Author: Tianhong Chu <cthesky13@gmail.com>
;; Keywords: emacs, term, config

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

(use-package term
  :after shell
  :bind
  (:map term-raw-map ("C-j" . 'toggle-between-term-and-shell-mode))
  :config
  (defun toggle-between-term-and-shell-mode ()
    "switch term mode to be editable: https://www.emacswiki.org/emacs/ShellMode#toc12"
    (interactive)
    (if (equal major-mode 'term-mode)
	(progn
          (shell-mode)
          (set-process-filter  (get-buffer-process (current-buffer)) 'comint-output-filter)
          (local-set-key (kbd "C-j") 'toggle-between-term-and-shell-mode)
          (compilation-shell-minor-mode 1)
          (comint-send-input)
	  )
      (progn
        (compilation-shell-minor-mode -1)
        (font-lock-mode -1)
        (set-process-filter  (get-buffer-process (current-buffer)) 'term-emulate-terminal)
        (term-mode)
        (term-char-mode)
        (term-send-raw-string (kbd "C-l"))
        ))))

(use-package eterm-256color
  :hook (term-mode . eterm-256color-mode))

(provide 'init-term)
;;; init-term.el ends here
