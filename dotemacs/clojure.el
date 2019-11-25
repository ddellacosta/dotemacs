
(use-package clojure-mode
  :ensure t
  :config
  (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)

  (use-package cider
    :ensure t

    :config
    (add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode)
    (setq cider-repl-history-file "~/.emacs.d/cider-history.eld")
    (setq cider-show-error-buffer nil))

  )
