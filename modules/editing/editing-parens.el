;; SmartParens
(use-package smartparens
  :ensure t
  :diminish smartparens-mode
  :config
  (require 'smartparens-config)
  (smartparens-global-mode))
