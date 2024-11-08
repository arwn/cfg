;;; init-os.el --- Integration with underlying os utilities. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package exec-path-from-shell :ensure t
  :config
  (when (or (memq window-system '(mac x))
	    (daemonp))
    (exec-path-from-shell-initialize)))

(provide 'init-os)

;;; init-os.el ends here
