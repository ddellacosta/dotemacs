
(use-package haskell-mode
  :ensure t
  
  :config
  ;; (use-package haskell-indent :ensure t)

  ;;(use-package flycheck-haskell :ensure t)

  (use-package yasnippet :ensure t)

  (use-package lsp-mode
    :ensure t
    :hook (haskell-mode . lsp)
    :commands lsp
    :config
    )

  (use-package lsp-ui
    :ensure t
    :config
    (setq lsp-ui-sideline-show-diagnostics f)
    (setq lsp-ui-sideline-show-hover f)
    (setq lsp-ui-sideline-show-code-actions t)
    (setq lsp-ui-doc-enable f)
    (setq lsp-ui-doc-show-with-cursor t)
    ;; (setq lsp-ui-sideline-delay 5)
    )

  (use-package lsp-haskell
    :ensure t
;;    :config
;;    (setq lsp-haskell-process-path-hie "ghcide")
;;    (setq lsp-haskell-process-args-hie '()))
    )

  ;; Comment/uncomment this line to see interactions between lsp client/server.
  ;;(setq lsp-log-io t)

  ;; (require 'haskell-interactive-mode)
  ;; (require 'haskell-process)

  (add-hook 'haskell-mode-hook #'lsp)
  (add-hook 'haskell-literate-mode-hook #'lsp)

  ;; (add-hook 'haskell-mode-hook 'flycheck-mode)
  ;; (add-hook 'haskell-mode-hook #'flycheck-haskell-setup)
  (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
  
  (setq haskell-compile-cabal-build-command "cabal build")
  (setq haskell-process-type 'cabal-repl)
  (setq haskell-process-args-cabal-repl
        '("--ghc-options=-ferror-spans -fshow-loaded-modules"))
  (setq haskell-interactive-popup-errors nil)
  
  (evil-define-key 'normal haskell-interactive-mode-map "^" 'haskell-interactive-mode-beginning)
  )

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; Haskell
;; 
;; ;; Reference:
;; ;; https://github.com/serras/emacs-haskell-tutorial/blob/master/tutorial.md
;; 
;; ;;(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
;; ;; (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
;; ;; turned off 2016.05.25
;; ;; (add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;; ;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)
;; 
;; ;; added 2016.05.25, commented 2017.01.14
;; ;; (add-hook 'haskell-mode-hook #'hindent-mode)
;; 

;; ;; (require 'shm)
;; ;; (add-hook 'haskell-mode-hook 'structured-haskell-mode)
;; ;; (set-face-background 'shm-current-face "#eee8d5")
;; ;; (set-face-background 'shm-quarantine-face "lemonchiffon")
;; 
;; ;; 2017.01.14
;; ;; https://commercialhaskell.github.io/intero/
;; ;;(add-hook 'haskell-mode-hook 'intero-mode)
;; 

;; ;; 2018.05.15
;; ;; https://github.com/jyp/dante 
;; 
;; ;; 2019.02.04 - reinstall means I'm seeing this now:
;; ;; https://github.com/jyp/dante/issues/83
;; ;;
;; ;; using a .dir-locals.el file per the suggestion
;; ;; in the thread above seems to work:
;; ;;
;; ;; ;; .dir-locals.el
;; ;; ((haskell-mode . (
;; ;; 		  (dante-target . "exe:blah")
;; ;; 		  )))
;; ;;
;; 

;; 
;; ;; (setq haskell-process-wrapper-function
;; ;;       (lambda (args) (apply 'nix-shell-command (nix-current-sandbox) args)))
;; 
;; (use-package dante
;;   :ensure t
;;   :after haskell-mode
;;   :commands 'dante-mode
;;   :init
;;   (add-hook 'haskell-mode-hook 'flycheck-mode)
;;   (add-hook 'haskell-mode-hook 'dante-mode)
;;   :config
;;   (flycheck-add-next-checker 'haskell-dante '(warning . haskell-hlint)))
;; 

;; (setq dante-repl-command-line "cabal repl --builddir=dante/dist")
;; 
;; ;; (add-hook 'dante-mode-hook
;; ;;    '(lambda () (flycheck-add-next-checker 'haskell-dante
;; ;;                 '(warning . haskell-hlint))))
;; 

;; (require 'haskell-interactive-mode)
;; (require 'haskell-process)
;; (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
;; 

;; (setq haskell-compile-cabal-build-command "cabal new-build")
;; (setq haskell-process-type 'cabal-new-repl)
;; 
;; ;; (setq haskell-process-args-ghci
;; ;;       '("-ferror-spans" "-fshow-loaded-modules"))
;; 
;; ;; (setq haskell-process-args-cabal-repl
;; ;;       '("--ghc-options=-ferror-spans -fshow-loaded-modules"))
;;  
;; ;; (setq haskell-process-args-stack-ghci
;; ;;       '("--ghci-options=-ferror-spans -fshow-loaded-modules"
;; ;;         "--no-build" "--no-load"))
;; 
;; (setq haskell-process-args-cabal-new-repl
;;       '("--ghc-options=-ferror-spans -fshow-loaded-modules"))
;; 
;; (setq haskell-interactive-popup-errors nil)
;; 
;; (evil-define-key 'normal haskell-interactive-mode-map
;;   "^" 'haskell-interactive-mode-beginning)
;; 
;; ;; (require 'tidal)
;; ;; (setq tidal-interpreter "/usr/local/bin/ghci")
;; ;; (setq tidal-interpreter "/usr/local/bin/cabal")
;; ;; (setq tidal-interpreter-arguments (list "new-repl"))
;; 
;; ;;
;; ;; TO-DO: figure out how to fix reverting to normal state so
;; ;; it doesn't bounce back a character in haskell-interactive-mode
;; ;; when you're already at the beginning of the line (after the prompt):
;; ;;
;; ;; (define-key evil-normal-state-map [escape] 'evil-force-normal-state)
;; ;; evil-emacs-state
;; ;; evil-exit-visual-state
