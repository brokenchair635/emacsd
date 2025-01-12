;;; packages-config.el --- Emacs Initialization file -*- lexical-binding: t; -*-
;;; Commentary:
;;; This file is the initialization file for Emacs.
;;; It contains various configurations and package settings.

;;; Code:

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(require 'flycheck)
(global-flycheck-mode)

(require 'tex)
(require 'tex-site)
(setq TeX-PDF-mode t)
(add-hook 'LaTeX-mode-hook 'turn-on-auto-fill)

(require 'lsp-mode)
(add-hook 'c++-mode-hook #'lsp)
(add-hook 'html-mode-hook #'lsp)
(add-hook 'css-mode-hook #'lsp)
(add-hook 'js2-mode-hook #'lsp)
(add-hook 'LaTeX-mode-hook #'lsp)
;;; packages-config.el ends here
