
;;; Code:

(set-frame-font
 (font-spec
  :family "Fira Code Retina"
  :size   32))

(global-display-line-numbers-mode 1)

(setq c-default-style "linux"
      c-basic-offset 2)

(setq-default indent-tabs-mode nil)

(setq default-tab-width 2)

(setq js-indent-level 2)

(setq typescript-indent-level 2)

;; transparency as of v.29
(set-frame-parameter (selected-frame) 'alpha-background 70)
(add-to-list 'default-frame-alist '(alpha-background . 70))


;; https://keramida.wordpress.com/2008/08/08/tweaking-shell-script-indentation-in-gnu-emacs/
(defun setup-sh-mode ()
  (interactive)
  (setq sh-basic-offset 2
	sh-indentation 2))

(add-hook 'sh-mode-hook 'setup-sh-mode)

(use-package rainbow-delimiters :ensure t)

(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode t))

(use-package emojify
  :ensure t
  :config
  (add-hook 'after-init-hook #'global-emojify-mode))

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

    ))

(use-package fish-mode :ensure t)

(use-package dhall-mode :ensure t)

(use-package magit
  :ensure t
  ;; :config
  ;; (use-package evil-magit :ensure t))
  )

(use-package nix-mode :ensure t)

(setq-default css-indent-offset 2)

(use-package scss-mode :ensure t)

(use-package purescript-mode
  :ensure t
  :config
  (add-hook 'purescript-mode-hook #'turn-on-purescript-indentation)
  )

;;(use-package psci-mode :ensure t)

(use-package yaml-mode :ensure t)

(use-package arduino-mode :ensure t)

(use-package lua-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
  (add-to-list 'interpreter-mode-alist '("lua" . lua-mode))
  )

(use-package grip-mode :ensure t)

;;
;; gotta install language grammar for typescript before this works as expected
;;
;; (use-package tree-sitter-langs
;;   :ensure t
;;   :after tree-sitter)
;;
;; (use-package typescript-ts-mode :ensure t)
;;

(use-package typescript-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.tsx$" . typescript-mode)))


(provide 'misc)
;;; misc.el ends here
