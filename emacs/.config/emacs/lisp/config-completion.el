;;; config-completion.el --- Completion and minibuffer -*- lexical-binding: t; -*-

(use-package which-key
  :config
  (which-key-mode 1))

(use-package swiper
  :config
  (keymap-global-set "C-s" #'swiper-isearch))

(use-package ivy
  :config
  (ivy-mode)
  (setopt ivy-use-virtual-buffers t)
  (setopt enable-recursive-minibuffers t))

(use-package company
  :config
  (setq company-idle-delay 0.0)
  (setq company-minimum-prefix-length 3)
  (add-hook 'after-init-hook #'global-company-mode))

(provide 'config-completion)
;;; config-completion.el ends here
