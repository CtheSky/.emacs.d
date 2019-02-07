;;; init-c.el --- Initialize c configuration         -*- lexical-binding: t; -*-

;; Copyright (C) 2019  Tianhong Chu

;; Author: Tianhong Chu <cthesky13@gmail.com>
;; Keywords: emacs, c, config

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


(provide 'init-c)
;;; init-c.el ends here
