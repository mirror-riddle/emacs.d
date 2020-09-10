;;; init-local.el --- Local Settings -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(set-default-font "monaco-20")

(require-package 'dracula-theme)
(load-theme 'dracula t)

(require-package 'typescript-mode)

(require-package 'prettier-js)
(require-package 'flymake-eslint)
(add-hook 'js2-mode-hook 'prettier-js-mode)
(add-hook 'js2-mode-hook (lambda () (flymake-eslint-enable)))

(require-package 'graphql-mode)

(require-package 'editorconfig)
(require 'editorconfig)
(editorconfig-mode 1)

(provide 'init-local)
;;; init-local.el ends here
