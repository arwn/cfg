;; i don't understand any of this crap

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
(use-package lsp-mode)
(use-package lsp-ui)

(use-package go-mode
  :config
  (setq gofmt-command "~/go/bin/goimports")
  (add-hook 'go-mode-hook #'lsp-deferred)
  (defun lsp-go-install-save-hooks ()
    (add-hook 'before-save-hook #'lsp-format-buffer t t)
    (add-hook 'before-save-hook #'lsp-organize-imports t t))
  (add-hook 'go-mode-hook #'lsp-go-install-save-hooks))

(use-package ruby-mode
  :config
  (add-hook 'ruby-mode-hook 'lsp-deferred))

(use-package yaml-mode)

(use-package sly
  :config
  (cond ((string-equal system-type "gnu/linux")
	 (setq inferior-lisp-program "/usr/bin/sbcl"))
	((string-equal system-type "windows-nt")
	 (progn
	   (setq sly-lisp-implementations '((sbcl ("C:/Program Files/Steel Bank Common Lisp/2.0.0/sbcl.exe" "--core" "C:/Program Files/Steel Bank Common Lisp/2.0.0/sbcl.core"))))
	   (setq inferior-lisp-program "c:/Program Files/Steel Bank Common Lisp/2.0.0/sbcl.exe")))
	(t "unknown os")))

(use-package lua-mode)

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
(set-frame-font "Go Mono 12" nil t)

;;; misc

(setq-default frame-title-format '("%b"))
(setq make-backup-files nil)
(global-hl-line-mode t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(delete-selection-mode t)
(setf inhibit-startup-screen t)
(add-hook 'before-save-hook 'whitespace-cleanup)
