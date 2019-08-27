;; Various Modes for Working on Web Stuff

;; JS, JSX, React, ES6, Flow
;; Get configs from node_modules
(use-package add-node-modules-path
  :ensure t)

;; Support Prettier
(use-package prettier-js-mode
  :ensure t)

;; Support html expansion
(use-package emmet-mode
  :ensure t)

;; JS2 Mode for nicer JS support
(use-package js2-mode
  :ensure t)

;; 
(defun web-mode-init-hook ()
  "Hooks for Web mode."
  ;; Indentation and CSS Coloring
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-script-padding 2)
  (setq web-mode-attr-indent-offset 2)
  (setq web-mode-enable-css-colorization t)

  ;; Other Modes
  (add-node-modules-path)
  (prettier-js-mode)
  (js2-minor-mode)
  (emmet-mode))

(use-package web-mode
  :ensure t
  :init (add-hook 'web-mode-hook 'web-mode-init-hook)
  :config
  ;; Trigger for html tsx and jsx modes
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))

  ;; Enable Syntax Highlighting for jsx
  (setq web-mode-content-types-alist '(("jsx" . "\\.js[x]?\\'")))

  ;; Disable default linters
  (setq-default flycheck-disabled-checkers
                (append flycheck-disabled-checkers '(javascript-jshint json-jsonlist)))

  ;; Enable Good Linters
  (flycheck-add-mode 'javascript-eslint 'web-mode))
