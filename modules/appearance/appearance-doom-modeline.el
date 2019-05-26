;; Mode line from Doom Emacs
(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode)
  :config
  (setq doom-modeline-github t)
  (setq doom-modeline-buffer-file-name-style 'truncate-except-project))
