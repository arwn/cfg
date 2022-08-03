(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package exec-path-from-shell
  :config
  (when (memq window-system '(mac ns x))
    (setenv "SHELL" "/opt/homebrew/bin/fish")
    (exec-path-from-shell-initialize)))

(use-package ivy
  :diminish ivy-mode
  :config
  (ivy-mode))

(use-package counsel
  :diminish counsel-mode
  :config
  (counsel-mode))

(use-package swiper
  :config
  (global-set-key "\C-s" 'swiper))

(use-package magit)

(use-package flycheck
  :config
  (global-flycheck-mode))

(use-package company
  :config
  (global-company-mode))

(use-package which-key
  :config
  (which-key-mode))

;;; language specific configs

;;; face customizations
(use-package modus-themes
  :config
  (setq modus-themes-hl-line '(intense)
       	modus-themes-mode-line '(borderless)
	modus-themes-syntax '(yellow-comments-green-strings)
	modus-themes-links '(neutral-underline))
  (load-theme 'modus-operandi t)
  :bind
  ("<f5>" . #'modus-themes-toggle))

(use-package rainbow-delimiters
  :config
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(global-hl-line-mode 1)
(show-paren-mode t)
(set-frame-font "IBM Plex Mono 14" nil t)

;;; misc

(setq eshell-banner-message "")
(setq-default frame-title-format '("%b"))
(setq make-backup-files nil)
(global-hl-line-mode t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(delete-selection-mode 1)
(setf inhibit-startup-screen t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("4cc1cc7efd5c2362ef684657eec7d7e482223b1def4edeb0fab52ba1d334d38a" default))
 '(package-selected-packages
   '(flycheck company magit rainbow-delimiters modus-themes which-key counsel ivy use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
