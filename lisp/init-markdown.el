;;; init-markdown.el --- Initialize markdown configuration  -*- lexical-binding: t; -*-

;; Copyright (C) 2019  Tianhong Chu

;; Author: Tianhong Chu <cthesky13@gmail.com>
;; Keywords: emacs, markdown, config

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

(use-package impatient-mode)
(use-package markdown-mode
  :init (setq markdown-command "pandoc")
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :bind (:map
	 markdown-mode-command-map
	 ("l" . markdown-live-preview-by-impatient-mode))
  :config
  (defun markdown-live-preview-by-impatient-mode ()
    (interactive)
    (httpd-start)
    (impatient-mode)
    (imp-set-user-filter
     (lambda (buffer)
       (princ (with-current-buffer buffer
		(format "<!DOCTYPE html><html>\
                         <title>Impatient Markdown</title>\
                         <xmp theme=\"united\" style=\"display:none;\"> %s  </xmp>\
                         <script src=\"http://strapdownjs.com/v/0.2/strapdown.js\"></script>\
                       </html>" (buffer-substring-no-properties (point-min) (point-max))))
	      (current-buffer))))
    (browse-url (concat "http://localhost:8080/imp/live/" (buffer-name (current-buffer))))))


(provide 'init-markdown)
;;; init-markdown.el ends here
