;;; init-benchmark-startup-time.el --- Benchmark the startup time -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(use-package benchmark-init
  :init (benchmark-init/activate)
  :hook (after-init . benchmark-init/deactivate)
  :config
  (defun display-startup-echo-area-message ()
    (message "init completed in %.2fms"
             (benchmark-init/node-duration-adjusted benchmark-init/durations-tree)))
)

(provide 'init-benchmark-startup-time)
;;; init-benchmark-startup-time.el ends here
