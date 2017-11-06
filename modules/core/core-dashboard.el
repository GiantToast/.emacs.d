;; Dashboard
(use-package page-break-lines
  :demand
  :ensure t)

(use-package dashboard
  :demand
  :ensure t
  :config (dashboard-setup-startup-hook))
