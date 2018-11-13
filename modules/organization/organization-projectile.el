;; Projectile
(use-package projectile
  :ensure t
  :config
  (projectile-global-mode t)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))
