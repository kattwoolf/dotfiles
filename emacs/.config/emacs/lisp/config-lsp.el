;;; config-lsp.el --- LSP setup -*- lexical-binding: t; -*-

(use-package eglot
  :hook ((c++-ts-mode c-ts-mode rust-ts-mode go-mode zig-mode elixir-mode) . eglot-ensure)
  :custom
  (eglot-autoshutdown t)
  (eglot-events-buffer-size 0)
  (eglot-ignored-server-capabilities
   '(:inlayHintProvider
     :documentHighlightProvider
     :documentFormattingProvider
     :documentRangeFormattingProvider
     :documentOnTypeFormattingProvider
     :colorProvider
     :foldingRangeProvider))
  (eglot-stay-out-of '(yasnippet)))

(provide 'config-lsp)
;;; config-lsp.el ends here
