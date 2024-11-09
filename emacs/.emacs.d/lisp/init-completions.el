;;; init-completions.el --- Interactive completion in buffers -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package corfu :ensure t
  :init
  (global-corfu-mode 1))

(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

(use-package vertico :ensure t
  :init
  (vertico-mode))

(use-package marginalia :ensure t
  :init
  (marginalia-mode t))

(use-package emacs
  :custom
  (tab-always-indent 'complete)
  (enable-recursive-minibuffers t))

(provide 'init-completions)

;;; init-completions.el ends here
