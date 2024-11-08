;;; init-javascript.el --- Support for Javascript & friends -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(if (not (treesit-language-available-p 'tsx))
    (treesit-install-language-grammar 'tsx))
(if (not (treesit-language-available-p 'javascript))
    (treesit-install-language-grammar 'javascript))
(if (not (treesit-language-available-p 'typescript))
    (treesit-install-language-grammar 'typescript))

(add-to-list 'auto-mode-alist '("\\.tsx\\'" . tsx-ts-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'"  . typescript-ts-mode))
(add-to-list 'auto-mode-alist '("\\.mjs\\'"  . typescript-ts-mode))
(add-to-list 'auto-mode-alist '("\\.mts\\'"  . typescript-ts-mode))
(add-to-list 'auto-mode-alist '("\\.cjs\\'"  . typescript-ts-mode))
(add-to-list 'auto-mode-alist '("\\.ts\\'"  . typescript-ts-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'"  . tsx-ts-mode))
(add-to-list 'auto-mode-alist '("\\.json\\'"  . json-ts-mode))

(add-hook 'typescript-ts-mode 'elglot-ensure)

(provide 'init-javascript)

;;; init-javascript.el ends here
