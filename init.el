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
(load "packages-config" 'noerror 'nomessage)

;;; init.el ends here
(put 'upcase-region 'disabled nil)
