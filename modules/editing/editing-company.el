(use-package company
  :ensure t
  :diminish company-mode
  :commands company-mode
  :init (setq company-dabbrev-ignore-case nil
	      company-dabbrev-code-ignore-case nil
	      company-dabbrev-downcase nil
	      company-idle-delay 0
	      company-minimum-prefix-length 4)
  :config (define-key company-active-map (kbd "TAB") nil))
