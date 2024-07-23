;;; init.el --- Emacs Initialzation file -*- lexical-binding: t; -*-
;;; Commentary:
;;; This file is the initialzation file for Emacs.
;;; It contains various configurations and package settings.

;;; Code:

;; Package Management
;; Ensure that `use-package` is installed for managing packages.
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
;; Install `use-package` if it's not already installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
;; Load `use-package` for further package management
(eval-when-compile
  (require 'use-package))
;; Configure packages with `use-package`
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))
(use-package magit
  :ensure t)
(use-package helm
  :ensure t)
(use-package auctex
  :ensure t)
(use-package company
  :ensure t
  :init (global-company-mode)
  :config (setq company-idle-delay 0.2))

;;; Startup Screen Settings
;; Set initial buffer and appearance
(switch-to-buffer "*scratch*")
(setq backup-directory-alist `(("." . "~/.emacs.d/backups/")))
(setq inhibit-startup-screen t)
(setq initial-scratch-message "")
(setq initial-major-mode 'org-mode)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; key Bindings
(global-set-key (kbd "M-x") 'helm-M-x)

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
