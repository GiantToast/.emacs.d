(use-package meghanada
  :ensure t
  :init
  (add-hook 'java-mode-hook
            (lambda ()              
              (meghanada-mode t)
              (flycheck-mode +1))))
