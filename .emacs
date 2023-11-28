;;
;; package manager setup
;;

(require 'package)

(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(load "~/.emacs.d/dotemacs/misc.el")
(load "~/.emacs.d/dotemacs/evil.el")
(load "~/.emacs.d/dotemacs/helm.el")
(load "~/.emacs.d/dotemacs/company.el")
(load "~/.emacs.d/dotemacs/haskell.el")
(load "~/.emacs.d/dotemacs/clojure.el")
(load "~/.emacs.d/dotemacs/org.el")

(setq custom-file "~/.emacs.d/dotemacs/custom.el")
(load custom-file)
