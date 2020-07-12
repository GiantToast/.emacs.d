;; Helm
(use-package helm
  :demand
  :ensure t
  :commands (helm-M-x helm-find-files)
  :bind (("M-x" . helm-M-x)
	 ("C-x C-f" . helm-find-files)
         ("C-x b" . helm-mini))
  :init (require 'helm-config)
  :config (helm-mode 1))

(use-package helm-projectile
  :demand
  :ensure t
  :config (helm-projectile-on))

(use-package helm-swoop
  :demand
  :ensure t
  :bind (("C-s" . helm-swoop)))
