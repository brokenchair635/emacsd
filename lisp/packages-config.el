;;; packages-config.el --- Emacs Initialization file -*- lexical-binding: t; -*-
;;; Commentary:
;;; This file is the initialization file for Emacs.
;;; It contains various configurations and package settings.

;;; Code:

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-minimum-prefix-length 1
      company-idle-delay 0.0) ;; default is 0.2

(require 'flycheck)
(global-flycheck-mode)

(require 'tex)
(require 'tex-site)
(setq TeX-PDF-mode t)
(setq TeX-view-program-selection '((output-pdf "PDF Tools")))
(add-hook 'LaTeX-mode-hook 'turn-on-auto-fill)

;;; packages-config.el ends here
