;;; i don't understand any of this crap

(require 'package)
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3") ; fix v26.1 bug..
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

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
(use-package go-mode
  :config
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook 'gofmt-before-save))

;;; face customizations
(use-package modus-themes
  :config
  (setq modus-themes-intense-hl-line t
	modus-themes-mode-line 'borderless
	modus-themes-syntax 'yellow-comments-green-strings
	modus-themes-links 'neutral-underline)
  (modus-themes-load-operandi)
  :bind
  ("<f5>" . #'modus-themes-toggle))

(use-package rainbow-delimiters
  :config
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(global-hl-line-mode 1)
(show-paren-mode t)
(set-frame-font "Go Mono" nil t)

;;; misc

(setq-default frame-title-format '("%b"))
(setq make-backup-files nil)
(global-hl-line-mode t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(delete-selection-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (rainbow-delimiters modus-themes go-mode which-key company flycheck magit counsel ivy use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
