;; Dashboard
(use-package page-break-lines
  :demand
  :ensure t)

(setq dashboard-banner-logo-title "Welcome back GiantToast -- May the Toast be with You")
(setq dashboard-startup-banner "~/.emacs.d/img/toast_logo.png")
(setq dashboard-items '((recents . 5)
			(projects . 5)
			(agenda . 5)))

(use-package dashboard
  :demand
  :ensure t
  :config (dashboard-setup-startup-hook))
