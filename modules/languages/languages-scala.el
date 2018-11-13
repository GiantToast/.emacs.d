(use-package ensime
  :demand
  :ensure t
  :pin melpa-stable)

;; (defun format-scala-code ()
;;   (when (eq major-mode 'scala-mode)
;;     (shell-command-to-string (format "ng scalaformat --exclude .ensime %s" buffer-file-name))))

(defun format-scala-code ()
  (when (eq major-mode 'scala-mode)
    (progn      
      (message
       (shell-command-to-string
	(format "/usr/local/Cellar/nailgun/0.9.3/bin/ng org.scalafmt.cli.Cli --exclude .ensime %s" buffer-file-name)))
      (revert-buffer :ignore-auto :noconfirm))))

(add-hook 'after-save-hook #'format-scala-code)
