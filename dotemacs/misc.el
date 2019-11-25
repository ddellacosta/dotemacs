
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

(use-package fish-mode :ensure t)

(use-package magit
  :ensure t
  :config
  (use-package evil-magit :ensure t))

(use-package nix-mode :ensure t)

(provide 'misc)
;;; misc.el ends here
