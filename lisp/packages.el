;;; packages.el --- Package configuration -*- lexical-binding: t; -*-
;;; Commentary:
;;; This file contains package management and configuration.

;;; Code:

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
(use-package company
  :ensure t
  :init (global-company-mode)
  :config (setq company-idle-delay 0.2))
(use-package helm
  :ensure t)
(use-package magit
  :ensure t)
(use-package auctex
  :ensure t)
(use-package web-mode
  :ensure t
  :mode (("\\.html?\\'" . web-mode)
         ("\\.css\\'" . web-mode)
         ("\\.js\\'" . web-mode)
         ("\\.php\\'" . web-mode)
         ("\\.jsx?\\'" . web-mode)
         ("\\.ejs\\'" . web-mode))
  :config
  (setq web-mode-enable-auto-indentation nil)
  (setq web-mode-enable-current-element-highlight t))

;;; packages.el ends here
