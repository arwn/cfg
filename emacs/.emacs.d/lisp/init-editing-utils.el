;;; init-editing-utils.el --- Day-to-day editing helpers -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Some basic preferences
(setq-default
 make-backup-files nil
 create-lockfiles nil
 delete-selection-mode 1)

(setq use-short-answers t)

(add-hook 'after-init-hook 'electric-pair-mode)

(use-package which-key :ensure t
  :config
  (which-key-mode 1))

(use-package flycheck :ensure t
  :init
  (global-flycheck-mode 1))

(use-package rainbow-delimiters :ensure t
  :config
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(provide 'init-editing-utils)

;;; init-editing-utils.el ends here
