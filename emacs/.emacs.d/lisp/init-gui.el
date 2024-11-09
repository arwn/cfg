;;; init-gui.el --- Behaviour specific to non-TTY frames -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(setq inhibit-startup-screen t)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(menu-bar-mode 0)
(setq default-frame-alist '((width . 90) (height . 40)
			    (font . "Iosevka 18")))

(provide 'init-gui)

;;; init-gui.el ends here
