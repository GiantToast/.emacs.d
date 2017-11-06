(use-package magit
  :ensure t
  :commands magit-status magit-blame
  :bind (("C-x g s" . magit-status)
         ("C-x g b" . magit-blame)))
