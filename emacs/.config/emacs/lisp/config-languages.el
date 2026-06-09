;;; config-languages.el --- Language modes -*- lexical-binding: t; -*-

(use-package treesit-auto
  :custom
  (treesit-auto-install 'prompt)
  :config
  (setq treesit-auto-langs '(python typescript cpp rust))
  (treesit-auto-add-to-auto-mode-alist 'all)
  (global-treesit-auto-mode))

(use-package yaml-mode)
(use-package cmake-mode)
(use-package lua-mode)
(use-package meson-mode)

(use-package systemd
  :mode (("\\.service\\'" . systemd-mode)
         ("\\.socket\\'" . systemd-mode)
         ("\\.target\\'" . systemd-mode)
         ("\\.timer\\'" . systemd-mode)
         ("\\.mount\\'" . systemd-mode)
         ("\\.path\\'" . systemd-mode)
         ("\\.slice\\'" . systemd-mode)
         ("\\.scope\\'" . systemd-mode)))

(when (fboundp 'global-tree-sitter-mode)
  (global-tree-sitter-mode)
  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))

(provide 'config-languages)
;;; config-languages.el ends here
