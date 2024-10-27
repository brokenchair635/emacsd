;;; packages-config.el --- Emacs Initialization file -*- lexical-binding: t; -*-
;;; Commentary:
;;; This file is the initialization file for Emacs.
;;; It contains various configurations and package settings.

;;; Code:

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(require 'company)

(add-hook 'after-init-hook 'global-company-mode)

(setq company-idle-delay 0.2)
(setq company-minimum-prefix-length 1)

(require 'flycheck)
(global-flycheck-mode)

(setq-default flycheck-disabled-checkers '(javascript-jshint))
(setq-default flycheck-checker 'javascript-eslint)

(add-hook 'js2-mode-hook #'flycheck-mode)

(setq-default flycheck-checkers '(c/c++-clang))

(add-hook 'c-mode-hook #'flycheck-mode)
(add-hook 'c++-mode-hook #'flycheck-mode)

(require 'tex)
(require 'tex-site)
(setq TeX-PDF-mode t)
(setq TeX-view-program-selection '((output-pdf "PDF Tools")))
(add-hook 'LaTeX-mode-hook 'turn-on-auto-fill)

;;; packages-config.el ends here
