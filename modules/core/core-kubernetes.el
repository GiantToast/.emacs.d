;; Kubernetes
(use-package kubernetes
  :ensure t
  :bind (("C-c C-k" . kubernetes-overview))
  :commands (kubernetes-overview))
