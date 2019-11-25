(set-frame-parameter (selected-frame) 'alpha '(95 . 50))
(add-to-list 'default-frame-alist '(alpha . (95 . 50)))

(use-package color-theme-sanityinc-tomorrow
  :ensure t
  :config
  (color-theme-sanityinc-tomorrow--define-theme night))

;; (use-package flatui-dark-theme :ensure t)
;; (use-package ample-theme :ensure t)
