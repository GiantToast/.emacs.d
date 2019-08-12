;; Spaceline

(use-package spaceline
  :ensure t)

(use-package spaceline-all-the-icons
  :ensure t
  :after (spaceline)
  :config (spaceline-all-the-icons-theme))
