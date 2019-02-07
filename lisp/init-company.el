;;; init-company.el --- Initialize company configuration  -*- lexical-binding: t; -*-

;; Copyright (C) 2019  Tianhong Chu

;; Author: Tianhong Chu <cthesky13@gmail.com>
;; Keywords: emacs, company, config

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

;; company mode for completion
(use-package company
  :config
  (global-company-mode t)
  (setq company-idle-delay 0.3)
  (setq company-minimum-prefix-length 1))

(use-package company-quickhelp
  :config
  (company-quickhelp-mode 1))

(provide 'init-company)
;;; init-company.el ends here
