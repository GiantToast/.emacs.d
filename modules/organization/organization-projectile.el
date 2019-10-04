;; Projectile
(use-package projectile
  :ensure t
  :init
  (setq projectile-enable-caching t)
  (setq projectile-indexing-method 'hybrid)
  :config
  (add-to-list 'projectile-globally-ignored-directories "flow-typed")
  (projectile-global-mode t)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))
