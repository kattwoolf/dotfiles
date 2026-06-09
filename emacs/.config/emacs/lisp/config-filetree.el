;;; config-filetree.el --- File tree sidebar -*- lexical-binding: t; -*-

(use-package treemacs
  :bind
  (("C-c t" . treemacs)
   ("C-c C-t" . treemacs-select-window))
  :config
  (setq treemacs-width 32)
  (setq treemacs-follow-after-init t)
  (setq treemacs-is-never-other-window t)
  (setq treemacs-sorting 'alphabetic-asc)
  (treemacs-follow-mode 1)
  (treemacs-filewatch-mode 1)
  (treemacs-fringe-indicator-mode 'always))

(use-package treemacs-projectile
  :after (treemacs projectile))

(provide 'config-filetree)
;;; config-filetree.el ends here
