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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
