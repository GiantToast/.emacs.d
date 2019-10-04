;; Web Mode
(use-package emmet-mode
  :ensure t
  :hook web-mode)

(use-package web-mode
  :ensure t
  :init
  (setq web-mode-markup-indent-offset 4)
  (setq web-mode-content-types-alist '(("jsx" . "\\.js[x]?\\'")))
  (setq-default flycheck-disabled-checkers
                (append flycheck-disabled-checkers
                        '(javascript-jshint json-jsonlist)))
  :mode (("\\.html?\\'" . web-mode)
         ("\\.tsx?$\\'" . web-mode)
         ("\\.jsx?$" . web-mode)))
