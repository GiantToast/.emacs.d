(use-package magit
  :ensure t
  :commands magit-status magit-blame
  :bind (("C-x g s" . magit-status)
         ("C-x g b" . magit-blame))
  :config (magit-auto-revert-mode 1))

(use-package magithub
  :ensure t
  :after magit
  :config
  (magithub-feature-autoinject t)
  (setq magithub-clone-default-directory "~/projects/work"))
