;;; init-theme.el --- Themes -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(setq light-theme 'tango)
(setq dark-theme 'tango-dark)

(setq custom-safe-themes t)

;; Sync theme with dark/light mode
(defun my/apply-theme (appearance)
  "Load theme, taking current system APPEARANCE into consideration."
  (mapc #'disable-theme custom-enabled-themes)
  (pcase appearance
    ('light (load-theme light-theme t))
    ('dark (load-theme dark-theme t))))

(add-hook 'ns-system-appearance-change-functions #'my/apply-theme)

;; Font
(set-face-attribute 'default nil :height 140)

(provide 'init-theme)

;;; init-theme.el ends here
