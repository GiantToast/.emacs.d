;; Language Server Support
(use-package lsp-mode
  :ensure t
  :commands (lsp))

(use-package lsp-ui
  :ensure t
  :commands (lsp-ui-mode))

(use-package company-lsp
  :ensure t
  :commands (company-lsp))

(use-package helm-lsp
  :ensure t
  :commands (helm-lsp-workspace-symbol))
