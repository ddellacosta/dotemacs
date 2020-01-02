
(use-package clojure-mode
  :ensure t
  :config
  (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)

  (use-package cider
    :ensure t

    :config
    (add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode)
    (setq cider-repl-history-file "~/.emacs.d/cider-history.eld")
    (setq cider-show-error-buffer nil)

    (add-hook 'cider-mode-hook
              (lambda ()
                (define-key cider-mode-map (kbd "C-c C-n") 'cider-repl-set-ns)))

    ) ; cider-mode

  ) ; clojure-mode
