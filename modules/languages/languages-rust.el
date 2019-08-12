(use-package rust-mode
  :ensure t)

(use-package cargo
  :ensure t
  :hook ((rust-mode . cargo-minor-mode)
         (rust-mode . lsp)))

(use-package flycheck-rust
  :ensure t)
