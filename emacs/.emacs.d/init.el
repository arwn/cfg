;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; This file bootstraps the configuration, which is divided into
;; a number of other files.

;;; Code:

;; Produce backtraces when errors occur: can be helpful to diagnose startup issues
(setq debug-on-error t)

(let ((minver "27.1"))
  (when (version< emacs-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))
(when (version< emacs-version "28.1")
  (message "Your Emacs is old."))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
;;(require 'init-benchmarking) ;; Measure startup time

(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer
(defconst *is-a-mac* (eq system-type 'darwin))


;; Adjust garbage collection threshold for early startup (see use of gcmh below)
(setq gc-cons-threshold (* 128 1024 1024))


;; Process performance tuning

(setq read-process-output-max (* 4 1024 1024))
(setq process-adaptive-read-buffering nil)


;; Bootstrap config

(require 'init-elpaca)
(use-package diminish :ensure t)

;; General performance tuning

(use-package gcmh :ensure t
  :init
  (setq gcmh-high-cons-threshold (* 128 1024 1024))
  :hook (after-init . (lambda () (gcmh-mode) (diminish gcmh-mode))))

(setq jit-lock-defer-time 0)


(require 'init-editing-utils)
(require 'init-theme)
(require 'init-gui)
(require 'init-term)
(require 'init-corfu) ; completions
(require 'init-os)

;; Langauages
(require 'init-treesit)
(require 'init-javascript)


(provide 'init)

;;; init.el ends here
