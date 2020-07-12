(use-package flycheck-pony
  :ensure t)

(use-package ponylang-mode
  :ensure t
  :hook (ponylang-mode . flycheck-mode))
