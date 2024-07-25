;;; backup.el --- Backup settings -*- lexical-binding: t; -*-
;;; Commentary:
;;; This file contains backup settings.

;;; Code:

;; Backup settings
(setq backup-directory-alist `(("." . "~/.emacs.d/backups/")))
(setq backup-by-copying t)  ;; Make backups by copying, not symlinking
(setq delete-old-versions t)
(setq kept-new-versions 6)
(setq kept-old-versions 2)
(setq version-control t)  ;; Use versioned backups

;;; backup.el ends here
