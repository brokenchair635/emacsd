;;; keybindings.el --- Key bindings -*- lexical-binding: t; -*-
;;; Commentary:
;;; This file contains custom key bindings.

;;; Code:

(global-set-key (kbd "M-x") 'helm-M-x)

(with-eval-after-load 'web-mode
  (define-key web-mode-map (kbd "C-c C-v") 'browse-url-of-buffer))

;;; keybindings.el ends here
