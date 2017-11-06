(use-package magit
  :ensure t
  :commands magit-status magit-blame
  :bind (("C-x g" . magit-status)
         ("C-x b" . magit-blame)))
