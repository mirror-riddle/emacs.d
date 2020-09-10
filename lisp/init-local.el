;;; init-local.el --- Local Settings -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(set-default-font "monaco-20")

(require-package 'dracula-theme)
(load-theme 'dracula t)

(require-package 'prettier-js)
(add-hook 'js2-mode-hook 'prettier-js-mode)

(require-package 'flymake-eslint)
(add-hook 'js2-mode-hook
          (defun setup-js2-mode ()
            (flycheck-select-checker 'javascript-eslint)))

(require-package 'graphql-mode)

(require-package 'editorconfig)
(require 'editorconfig)
(editorconfig-mode 1)

(provide 'init-local)
;;; init-local.el ends here
