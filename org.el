;;; org.el --- description -*- lexical-binding: t; -*-
;;
;;; Commentary:
;;
;;  Adds org-mode and pins to the orgmode repository as opposed
;;  to the frequently broken versions on MELPA.
;;
;;; Code:
;;;
(use-package org
  :ensure t
  :defer t
  :pin org
  :mode ("\\.org\\’" . org-mode)
  :defines
  (org-startup-indented
   org-html-validation-link
   org-export-html-postamble
   org-use-sub-superscripts
   org-agenda-show-log
   org-agenda-todo-ignore-scheduled
   org-agenda-todo-ignore-deadlines
   org-agenda-skip-deadline-if-done
   org-agenda-skip-scheduled-if-done
   org-agenda-include-diary
   org-capture-templates
   org-babel-clojure-backend)
  :config
  (require 'ob-clojure)
  (setq org-directory "~/Dropbox/org"
        org-agenda-include-diary t
        org-agenda-show-all-dates t
        org-agenda-show-log t
        org-agenda-skip-deadline-if-done t
        org-agenda-skip-scheduled-if-done t
        org-agenda-skip-timestamp-if-done t
        org-agenda-span 7
        org-agenda-start-on-weekday 1
        org-agenda-todo-ignore-deadlines t
        org-agenda-todo-ignore-scheduled t
        org-agenda-use-tag-inheritance nil
        org-agenda-window-setup 'current-window
        org-babel-clojure-backend 'cider
        org-confirm-babel-evaluate nil
        org-export-backends '(ascii html latex md)
        org-export-html-postamble nil
        org-fontify-done-headline t
        org-html-validation-link nil
        org-log-done nil
        org-outline-path-complete-in-steps nil
        org-pretty-entities t
        org-refile-use-cache t
        org-refile-use-outline-path t
        org-return-follows-link t
        org-src-fontify-natively t
        org-src-tab-acts-natively t
        org-src-window-setup 'current-window
        org-startup-indented t
        org-startup-folded nil
        org-use-fast-todo-selection t
        org-use-sub-superscripts "{}")

  (add-hook 'org-mode-hook
            (lambda ()
              (flyspell-mode)
              (auto-fill-mode)))

  (org-babel-do-load-languages
   'org-babel-load-languages
   '((emacs-lisp . t)
     (shell      . t)
     (clojure    . t)
     (java       . t)
     (js         . t)))

  (add-to-list 'org-babel-tangle-lang-exts '("clojure" . "clj"))
  (add-to-list 'org-babel-tangle-lang-exts '("js"      . "js"))

  :bind
  (("C-c a" . org-agenda)
   ("C-c c" . org-capture)
   ("C-c l" . org-store-link)))

(use-package htmlize
  :ensure t
  :defer t)

(provide 'org)
;;; org.el ends here
