;;; init-gui.el --- Behaviour specific to non-TTY frames -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(setq inhibit-startup-screen t)

(tool-bar-mode 0)
(scroll-bar-mode 0)
(menu-bar-mode 0)
(set-frame-font "Iosevka Term 18" nil t)

(provide 'init-gui)

;;; init-gui.el ends here
