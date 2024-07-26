;;; init.el --- Emacs Initialization file -*- lexical-binding: t; -*-
;;; Commentary:
;;; This file is the initialization file for Emacs.
;;; It contains various configurations and package settings.

;;; Code:

;; Add custom load path
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Load custom configuration files
(load "packages" 'noerror 'nomessage)
(load "ui" 'noerror 'nomessage)
(load "keybindings" 'noerror 'nomessage)
(load "backup" 'noerror 'nomessage)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)
(setq web-mode-enable-auto-closing t)
(setq web-mode-enable-auto-pairing t)

(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 0.2)

(require 'flycheck)
(global-flycheck-mode)

;; Custom Settings
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(auctex company flycheck helm magit)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; init.el ends here
(put 'upcase-region 'disabled nil)
