;;; config-projects.el --- Project and window packages -*- lexical-binding: t; -*-

(use-package perspective
  :bind
  ("C-x C-b" . persp-list-buffers)
  :custom
  (persp-mode-prefix-key (kbd "C-c M-p"))
  :init
  (persp-mode))

(use-package projectile
  :config
  (setq projectile-project-search-path '("~/Projects/"))
  (setq projectile-auto-discover t)
  (projectile-mode 1)
  (projectile-discover-projects-in-search-path)
  (define-key projectile-mode-map (kbd "C-c p") #'projectile-command-map))

(use-package transpose-frame)

(use-package move-text
  :config
  (global-set-key (kbd "M-p") #'move-text-up)
  (global-set-key (kbd "M-n") #'move-text-down))

(provide 'config-projects)
;;; config-projects.el ends here
