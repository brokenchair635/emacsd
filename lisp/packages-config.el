;;; packages-config.el --- Emacs Initialization file -*- lexical-binding: t; -*-
;;; Commentary:
;;; This file is the initialization file for Emacs.
;;; It contains various configurations and package settings.

;;; Code:

;; web-mode settings
(require 'web-mode)

(dolist (pattern '("\\.html?\\'"
                   "\\.css?\\'"
                   "\\.phtml\\'"
                   "\\.tpl\\.php\\'"
                   "\\.[agj]sp\\'"
                   "\\.as[cp]x\\'"
                   "\\.erb\\'"
                   "\\.mustache\\'"
                   "\\.php\\'"
                   "\\.djhtml\\'"))
  (add-to-list 'auto-mode-alist (cons pattern 'web-mode)))

(defun my-web-mode-hook ()
  "Hook for `web-mode' to set up mode-specific settings."
  (let ((ext (file-name-extension buffer-file-name)))
    (cond
     ((member ext '("html" "htm"))
      ;; HTML specific settings
      (setq web-mode-markup-indent-offset 2)
      (flycheck-select-checker 'html-tidy)
      (flycheck-add-next-checker 'html-tidy 'css-stylelint))
     ((string-equal "css" ext)
      ;; CSS specific settings
      (setq web-mode-css-indent-offset 2)
      (flycheck-select-checker 'css-stylelint))
     )))

(setq web-mode-enable-css-colorization t)
(setq web-mode-enable-auto-closing t)
(setq web-mode-enable-auto-pairing t)
(setq web-mode-enable-current-element-highlight t)

(add-hook 'web-mode-hook 'my-web-mode-hook)

(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 0.2)

(require 'flycheck)
(global-flycheck-mode)

(flycheck-define-checker html-tidy
  "A HTML syntax checker using tidy.
    
See URL `https://github.com/htacg/tidy-html5'."
  :command ("tidy" "-errors" "-quiet" "-utf8" source)
  :error-patterns
  ((warning line-start "line " line " column " column " - Warning: " (message) line-end)
   (error line-start "line " line " column " column " - Error: " (message) line-end))
  :modes (web-mode html-mode))

(add-to-list 'flycheck-checkers 'html-tidy)

(flycheck-define-checker css-stylelint
  "A CSS syntax and style checker using stylelint.
See URL `https://stylelint.io/'."
  :command ("stylelint" "--stdin" "--stdin-filename" source-original)
  :standard-input t
  :error-patterns
  ((warning line-start (file-name) ":" line ":" column ": " (message) line-end))
  :modes (css-mode scss-mode less-mode web-mode))

(add-to-list 'flycheck-checkers 'css-stylelint)

;;; packages-config.el ends here
