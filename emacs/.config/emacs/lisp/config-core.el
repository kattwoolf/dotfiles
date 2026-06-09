;;; config-core.el --- Core options -*- lexical-binding: t; -*-

(setq hscroll-step 1)
(setq scroll-conservatively 101)
(setq scroll-step 1)
(setq scroll-preserve-screen-position t)

(setq auto-save-default nil)
(setq make-backup-files t)
(setq vc-make-backup-files t)
(setq delete-old-versions t)
(setq backup-directory-alist `(("." . ,(expand-file-name "backupfiles/" user-emacs-directory))))
(setq backup-by-copying t)
(setq version-control nil)
(setq image-dired-dir `(("." . ,(expand-file-name "imagedired/" user-emacs-directory))))

(setq confirm-kill-emacs nil)
(setq uniquify-buffer-name-style 'forward)
(setq dired-listing-switches "-alh")
(setq compilation-scroll-output t)
(setq inhibit-startup-screen t)
(setq use-dialog-box nil)
(setq echo-keystrokes 0.02)
(setq global-auto-revert-non-file-buffers t)
(setq buffer-auto-revert-by-notification t)
(setq visible-cursor nil)
(setq visible-bell t)
(setq desktop-load-locked-desktop t)

(setq read-process-output-max (* 1024 1024))
(setq gc-cons-threshold (* 100 1024 1024))

(provide 'config-core)
;;; config-core.el ends here
