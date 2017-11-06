;; Ace Jump
(use-package ace-jump-mode
  :ensure t
  :commands (ace-jump-mode ace-jump-mode-pop-mark)
  :bind (("C-." . ace-jump-mode)
	 ("C-x ." . ace-jump-mode-pop-mark))
  :config (ace-jump-mode-enable-mark-sync))
