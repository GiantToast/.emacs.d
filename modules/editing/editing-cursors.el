;; Multiple Cursors
(use-package multiple-cursors
  :ensure t
  :commands (mc/edit-lines
	     mc/mark-next-like-this
	     mc/mark-previous-like-this
	     mc/mark-all-like-this)
  :bind (("C-S-c C-S-c" . mc/edit-lines)
	 ("C->" . mc/mark-next-like-this)
	 ("C-<" . mc/mark-previous-like-this)
	 ("C-c C-<" . mc/mark-all-like-this)))
