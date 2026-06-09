;;; config-editing.el --- Editing behavior -*- lexical-binding: t; -*-

(global-auto-revert-mode 1)
(editorconfig-mode 1)
(savehist-mode 1)
(save-place-mode 1)
(delete-selection-mode 1)
(winner-mode 1)

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default standard-indent 4)
(setq backward-delete-char-untabify-method nil)
(setq lisp-indent-offset 2)
(setq elisp-basic-offset 2)

(defun config/c-indent ()
  "Use the preferred C-family indentation defaults."
  (setq c-ts-mode-indent-offset 4)
  (setq c-ts-mode-indent-style 'linux)
  (setq-local show-trailing-whitespace t))

(add-hook 'c-ts-mode-hook #'config/c-indent)
(add-hook 'c++-ts-mode-hook #'config/c-indent)

(dolist (ext '("\\.ixx\\'" "\\.cxx\\'" "\\.mpp\\'"))
  (add-to-list 'auto-mode-alist (cons ext 'c++-mode)))

(put 'dired-find-alternate-file 'disabled nil)
(add-hook 'compilation-filter-hook #'ansi-color-compilation-filter)

(provide 'config-editing)
;;; config-editing.el ends here
