;;; init-corfu.el --- Interactive completion in buffers -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package corfu :ensure t
  :init
  (global-corfu-mode 1))

(use-package emacs
  :custom
  (tab-always-indent 'complete))

(provide 'init-corfu)

;;; init-corfu.el ends here
