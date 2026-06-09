;;; config-theme.el --- Theme setup -*- lexical-binding: t; -*-

(use-package catppuccin-theme
  :config
  (setq catppuccin-flavor 'mocha))

(load-theme 'catppuccin t)

(catppuccin-set-color 'pink "#f38ba8" 'mocha)
(catppuccin-set-color 'red "#f5c2e7" 'mocha)
(catppuccin-reload)

(defun config/transparent-terminal-background (&optional frame)
  "Let terminal transparency show through in `emacs -nw'."
  (with-selected-frame (or frame (selected-frame))
    (unless (display-graphic-p)
      (set-face-background 'default "unspecified-bg" frame)
      (set-face-background 'fringe "unspecified-bg" frame)
      (set-face-background 'line-number "unspecified-bg" frame)
      (set-face-background 'line-number-current-line "unspecified-bg" frame))))

(config/transparent-terminal-background)
(add-hook 'after-make-frame-functions #'config/transparent-terminal-background)

(provide 'config-theme)
;;; config-theme.el ends here
