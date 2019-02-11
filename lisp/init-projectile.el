;;; init-projectile.el --- Initialize projectile configuration  -*- lexical-binding: t; -*-

;; Copyright (C) 2019  Tianhong Chu

;; Author: Tianhong Chu <cthesky13@gmail.com>
;; Keywords: emacs, projectile, config

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

(use-package projectile
  :config
  (projectile-global-mode)
  (setq projectile-completion-system 'ivy)
  (setq projectile-switch-project-action 'projectile-find-file)
  (setq projectile-mode-line-function '(lambda () (format " Proj[%s]" (projectile-project-name))))
  :bind (("C-c p" . 'projectile-command-map)
	 ("s-p" . 'projectile-command-map))
  )

(provide 'init-projectile)
;;; init-projectile.el ends here
