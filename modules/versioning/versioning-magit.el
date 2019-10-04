(use-package magit
  :ensure t
  :commands magit-status magit-blame
  :bind (("C-x g s" . magit-status)
         ("C-x g b" . magit-blame))
  :config
  (magit-auto-revert-mode t)
  (setq vc-handled-backends nil))
