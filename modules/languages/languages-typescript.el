;; ;;Typescript
;; (use-package tide
;;   :ensure t)

;; (defun setup-tide-mode ()
;;   (interactive)
;;   (tide-setup)
;;   (flycheck-mode +1)
;;   (setq flycheck-check-syntax-automatically '(save mode-enabled))
;;   (eldoc-mode +1)
;;   (tide-hl-identifier-mode +1)
;;   (company-mode +1))

;; ;; aligns annotation to the right hand side
;; ;;(setq company-tooltip-align-annotations t)

;; ;; formats the buffer before saving
;; ;; (add-hook 'before-save-hook 'tide-format-before-save)

;; (setq tide-format-options '(:indentSize 2 :tabSize 2))
;; (add-hook 'typescript-mode-hook #'setup-tide-mode)

;; ;; TSX Support
;; (add-hook 'web-mode-hook
;;           (lambda ()
;;             (when (string-equal "tsx" (file-name-extension buffer-file-name))
;; 	      (progn (setup-tide-mode) (flycheck-add-mode 'typescript-tslint 'web-mode)))))


;; ;; JSX Support
;; (add-hook 'web-mode-hook
;;           (lambda ()
;;             (when (string-equal "jsx" (file-name-extension buffer-file-name))
;; 	      (progn
;; 		(setup-tide-mode)
;; 		(flycheck-add-mode 'javascript-eslint 'web-mode)
;; 		(flycheck-add-next-checker 'javascript-eslint 'jsx-tide 'append)))))

;; ;; JS Support
;; (add-hook 'js2-mode-hook #'setup-tide-mode)
;; (add-hook 'js2-mode-hook
;; 	  (lambda() (flycheck-add-next-checker 'javascript-eslint 'javascript-tide 'append)))

;; ;; Typescript Mode Indentation
;; (setq typescript-indent-level 2)

;; ;; JS2 Mode Indentation
;; (setq js2-basic-offset 2)

;; ;; Web Mode Indentation
;; (setq web-mode-markup-indent-offset 2)
;; (setq web-mode-css-indent-offset 2)
;; (setq web-mode-code-indent-offset 2)
;; (setq web-mode-script-padding 2)
;; (setq web-mode-attr-indent-offset 2)
;; (setq web-mode-enable-css-colorization t)
;; (add-to-list 'web-mode-indentation-params '("lineup-calls" . nil))
