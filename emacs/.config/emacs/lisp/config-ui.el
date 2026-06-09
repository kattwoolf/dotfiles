;;; config-ui.el --- UI settings -*- lexical-binding: t; -*-

(add-to-list 'default-frame-alist '(fullscreen . maximized))
(add-to-list 'default-frame-alist '(font . "monospace 14"))

(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

(xterm-mouse-mode 1)
(column-number-mode 1)
(blink-cursor-mode 0)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

(provide 'config-ui)
;;; config-ui.el ends here
