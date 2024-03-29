
;; Evil Mode
(use-package evil
  :ensure t
  :config

  (evil-mode 1)
  (evil-ex-define-cmd "bdp" 'kill-buffer))

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

;;  (use-package evil-leader
;;    :ensure t
;;    :config
;;    (global-evil-leader-mode t)
;;    (evil-leader/set-leader "<SPC>")
;;    (evil-leader/set-key
;;      "s s" 'swiper
;;      "d x w" 'delete-trailing-whitespace))
;;
;;  (use-package evil-surround
;;    :ensure t
;;    :config (global-evil-surround-mode))
;;
;;  (use-package evil-indent-textobject
;;    :ensure t)
;;
;;  (use-package evil-org
;;    :ensure t
;;    :config
;;    (evil-org-set-key-theme
;;	  '(textobjects insert navigation additional shift todo heading))
;;    (add-hook 'org-mode-hook (lambda () (evil-org-mode))))

(use-package powerline-evil
  :ensure t
  :config
  (powerline-evil-vim-color-theme))

(use-package evil-org
  :ensure t
  :after org
  :hook (org-mode . (lambda () evil-org-mode))
  :config
  (require 'evil-org-agenda)
  (evil-org-agenda-set-keys))
