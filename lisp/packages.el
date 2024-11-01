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
(use-package company
  :ensure t)
(use-package helm
  :ensure t)
(use-package magit
  :ensure t)
(use-package auctex
  :ensure t)
(use-package js2-mode
  :ensure t)
;;;On MacOS also add the following to fix your $PATH environment variable:
(use-package exec-path-from-shell
  :ensure t)
(exec-path-from-shell-initialize)

;;; packages.el ends here
