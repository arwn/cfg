;;; init-editing-utils.el --- Day-to-day editing helpers -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Some basic preferences
(setq-default
 make-backup-files nil
 create-lockfiles nil
 display-line-numbers-type 'relative)

(global-display-line-numbers-mode 1)
(delete-selection-mode t)

(setq use-short-answers t)

(add-hook 'after-init-hook 'electric-pair-mode)

(keymap-global-set "s-p" 'consult-buffer)

(use-package consult :ensure t
  :bind (("C-c M-x" . consult-mode-command)
	 ("C-s" . consult-line)
	 ("M-s r" . consult-ripgrep)))

(use-package which-key :ensure t
  :config
  (which-key-mode 1))

(use-package flycheck :ensure t
  :custom
  (flycheck-emacs-lisp-load-path 'inherit)
  :init
  (global-flycheck-mode 1))

(use-package rainbow-delimiters :ensure t
  :config
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(provide 'init-editing-utils)

;;; init-editing-utils.el ends here
