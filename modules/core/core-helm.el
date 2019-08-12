;; Helm
(use-package helm
  :demand
  :ensure t
  :commands (helm-M-x helm-find-files)
  :bind (("M-x" . helm-M-x)
	 ("C-x C-f" . helm-find-files))
  :init (require 'helm-config)
  :config (helm-mode 1))

(use-package helm-projectile
  :demand
  :ensure t
  :config (helm-projectile-on))
