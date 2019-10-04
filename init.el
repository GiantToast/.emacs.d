;; Helper Functions
(defun load-directory (dir)
  (let ((load-it (lambda (f) (load-file (concat (file-name-as-directory dir) f)))))
    (mapc load-it (directory-files dir nil "\\.el$"))))

;; Setup Package Manager
(require 'package)
(setq package-enable-at-startup nil)

;; Hack to fix bug with TLS
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
;;(setq package-check-signature nil)

;; Add Other Archives
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("melpa-stable" . "https://stable.melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/")))

;; Initialize
(load-directory "~/.emacs.d/custom")
(package-initialize)
(package-refresh-contents)

;; Install Diminish and Use Package
(unless (package-installed-p 'diminish)
  (package-install 'diminish))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

;; Setup Diminish, Use Package, and Bind Key
(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)

;; Set up PATH from shell
(use-package exec-path-from-shell
  :demand t
  :ensure t
  :config
  (add-to-list 'exec-path-from-shell-variables '"NVM_BIN")
  (when (memq window-system '(mac ns x))
	    (exec-path-from-shell-initialize)))

;; Add Module Dirs to Load-Path
(add-to-list 'load-path "~/.emacs.d/modules")
(add-to-list 'load-path "~/.emacs.d/modules/core")
(add-to-list 'load-path "~/.emacs.d/modules/appearance")
(add-to-list 'load-path "~/.emacs.d/modules/organization")
(add-to-list 'load-path "~/.emacs.d/modules/editing")
(add-to-list 'load-path "~/.emacs.d/modules/versioning")
(add-to-list 'load-path "~/.emacs.d/modules/languages")
(add-to-list 'load-path "~/.emacs.d/modules/fun")

;; Load Individual Modules
(load "core/core-init")
(load "appearance/appearance-init")
(load "organization/organization-init")
(load "editing/editing-init")
(load "versioning/versioning-init")
(load "languages/languages-init")

;; Start Emacs Server
(server-start)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (nyan-mode gnu-elpa-keyring-update spinner meghanada spaceline-all-the-icons spaceline helm-projectile helm prodigy dashboard page-break-lines exec-path-from-shell use-package diminish))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
