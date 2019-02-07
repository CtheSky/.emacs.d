;;; init-key-map.el --- Initialize key-map configuration  -*- lexical-binding: t; -*-

;; Copyright (C) 2019  Tianhong Chu

;; Author: Tianhong Chu <cthesky13@gmail.com>
;; Keywords: emacs, key-map, config

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

;; TERMINAL MAPPINGS TO SUPPORT ITERM2 FOR MAC
;; https://www.emacswiki.org/emacs/iTerm2
(let ((map (if (boundp 'input-decode-map)
               input-decode-map
	     function-key-map)))
  (define-key map "\e[1;P9"  (kbd "s-p")))


(provide 'init-key-map)
;;; init-key-map.el ends here
