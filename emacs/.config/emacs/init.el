;;; init.el --- Katt's Emacs config -*- lexical-binding: t; -*-

(setq user-emacs-directory (expand-file-name "~/.config/emacs/"))
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

(require 'config-core)
(require 'config-ui)
(require 'config-editing)
(require 'config-packages)
(require 'config-evil)
(require 'config-completion)
(require 'config-projects)
(require 'config-filetree)
(require 'config-languages)
(require 'config-lsp)
(require 'config-apps)
(require 'config-theme)

;;; init.el ends here
