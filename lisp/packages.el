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

;; Install packages with `use-package`
(use-package flycheck
  :ensure t)
(use-package helm
  :ensure t)
(use-package magit
  :ensure t)
(use-package auctex
  :ensure t)
(use-package js2-mode
  :ensure t)
(use-package dockerfile-mode
  :ensure t)
(use-package lsp-mode
  :ensure t
  :hook ((c++-mode . lsp)
         (html-mode . lsp)
         (css-mode . lsp)
         (js2-mode . lsp))
         (LaTeX-mode . lsp)
  
  :commands lsp)

;;; packages.el ends here
