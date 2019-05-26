(use-package prodigy
  :ensure t
  :bind (("C-c C-p" . prodigy))
  :config
  (load "core-prodigy-helpers.el")
  (load "core-prodigy-tags")
  (load "core-prodigy-services.el"))
