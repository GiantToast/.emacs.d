;; Load the Monokai theme
;; (use-package monokai-theme
;;   :demand
;;   :ensure t
;;   :config (load-theme 'monokai t))

(use-package doom-themes
  :demand
  :ensure t
  :init (load-theme 'doom-one t)
  :commands (doom-themes-neotree-config)
  :config
  (doom-themes-neotree-config)
  (doom-themes-org-config)
  (setq doom-neotree-file-icons t)
  (setq doom-neotree-project-size 1.1))
