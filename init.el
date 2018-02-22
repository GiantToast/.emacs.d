;; Setup Package Manager
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(unless (package-installed-p 'diminish)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)

;; Set up PATH from shell
(use-package exec-path-from-shell
  :demand t
  :ensure t
  :config (when (memq window-system '(mac ns x))
	    (exec-path-from-shell-initialize)))

;; Add Module Dirs to Load-Path
(add-to-list 'load-path "~/.emacs.d/modules")
(add-to-list 'load-path "~/.emacs.d/modules/core")
(add-to-list 'load-path "~/.emacs.d/modules/appearance")
(add-to-list 'load-path "~/.emacs.d/modules/organization")
(add-to-list 'load-path "~/.emacs.d/modules/editing")
(add-to-list 'load-path "~/.emacs.d/modules/versioning")
(add-to-list 'load-path "~/.emacs.d/modules/languages")

;; Load Individual Modules
(load "core/core-init")
(load "appearance/appearance-init")
(load "organization/organization-init")
(load "editing/editing-init")
(load "versioning/versioning-init")
(load "languages/languages-init")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (calfw-ical calfw org-mac-iCal stan-snippets stan-mode ess elscreen prodigy smartparens cider clojure-mode ensime magit yasnippet company multiple-cursors neotree smartparens-config helm-projectile helm-config ace-jump-mode projectile rainbow-mode beacon monokai-theme all-the-icons dashboard page-break-lines use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
