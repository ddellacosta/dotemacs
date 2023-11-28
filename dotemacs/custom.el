(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("5a611788d47c1deec31494eb2bb864fde402b32b139fe461312589a9f28835db" "4a288765be220b99defaaeb4c915ed783a9916e3e08f33278bf5ff56e49cbc73" "7c20c453ad5413b110ccc3bb5df07d69999d741d29b1f894bd691f52b4abdd31" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" default))
 '(helm-minibuffer-history-key "M-p")
 '(inhibit-startup-screen t)
 '(org-agenda-files '("~/org/todo.org"))
 '(package-selected-packages '(lua-mode evil-collection use-package))
 '(safe-local-variable-values
   '((haskell-process-args-cabal-repl "--repl-options=-prof -fno-prof-count-entries")
     (haskell-process-args-cabal-repl "--repl-options=-prof -fno-prof-count-entries +RTS -hc -RTS")
     (haskell-process-args-cabal-repl "--ghc-options=-prof -fno-prof-count-entries")
     (haskell-process-args-cabal-repl "--ghc-options=-prof -fno-prof-count-entries -hc")
     (haskell-process-args-cabal-repl "--ghc-options=-ferror-spans -fshow-loaded-modules -L=/nix/store/bcvv9sz25sw7x6dd6ldv5gqdhp93n7r5-llama.cpp/lib -I=/nix/store/bcvv9sz25sw7x6dd6ldv5gqdhp93n7r5-llama.cpp/include")
     (haskell-process-args-cabal-repl "--ghc-options=-ferror-spans -fshow-loaded-modules -L=/nix/store/2b3dn694vgd78kg479babp179rvv85an-llama.cpp/lib -I=/nix/store/2b3dn694vgd78kg479babp179rvv85an-llama.cpp/include")
     (haskell-process-args-cabal-repl "--ghc-options=-ferror-spans -fshow-loaded-modules --extra-lib-dirs=/nix/store/2b3dn694vgd78kg479babp179rvv85an-llama.cpp/lib --extra-include-dir=/nix/store/2b3dn694vgd78kg479babp179rvv85an-llama.cpp/include")
     (haskell-process-args-cabal-repl "--ghc-options=-ferror-spans -fshow-loaded-modules" "--extra-lib-dirs=/nix/store/2b3dn694vgd78kg479babp179rvv85an-llama.cpp/lib" "--extra-include-dir=/nix/store/2b3dn694vgd78kg479babp179rvv85an-llama.cpp/include")
     (haskell-process-args-cabal-repl "--ghc-options=-ferror-spans -fshow-loaded-modules" "--extra-lib-dir=/nix/store/2b3dn694vgd78kg479babp179rvv85an-llama.cpp/lib" "--extra-include-dir=/nix/store/2b3dn694vgd78kg479babp179rvv85an-llama.cpp/include")
     (haskell-process-args-cabal-repl "automation-service-tests")
     (haskell-process-args-cabal-repl "actions-service-tests")
     (haskell-compile-cabal-build-command . "cabal build --extra-lib-dir=/nix/store/jf217yacqd074ypqp2rxs66i29nxi4rn-gcc-11.3.0/lib")
     (haskell-process-args-cabal-repl "--ghc-options=-ferror-spans -fshow-loaded-modules" "--extra-lib-dir=/nix/store/jf217yacqd074ypqp2rxs66i29nxi4rn-gcc-11.3.0/lib")
     (haskell-process-path-cabal quote
                                 ("cabal" "repl" "--extra-lib-dir=/nix/store/jf217yacqd074ypqp2rxs66i29nxi4rn-gcc-11.3.0/lib"))
     (haskell-process-path-cabal . "cabal repl --extra-lib-dir=/nix/store/jf217yacqd074ypqp2rxs66i29nxi4rn-gcc-11.3.0/lib")
     (haskell-process-args-cabal-repl . "--ghc-options=-ferror-spans -fshow-loaded-modules")
     (haskell-process-args-cabal-repl quote
                                      ("--ghc-options=-ferror-spans -fshow-loaded-modules"))
     (haskell-process-args-cabal-repl . "--ghc-options=-ferror-spans -fshow-loaded-modules --extra-lib-dir=/nix/store/jf217yacqd074ypqp2rxs66i29nxi4rn-gcc-11.3.0/lib")
     (haskell-process-args-cabal-repl quote
                                      ("--ghc-options=-ferror-spans -fshow-loaded-modules" "--extra-lib-dir=/nix/store/jf217yacqd074ypqp2rxs66i29nxi4rn-gcc-11.3.0/lib"))
     (haskell-process-args-cabal-repl quote
                                      ("--ghc-options=-ferror-spans -fshow-loaded-modules" "--extra-lib-dir=(echo $PATH | sed -E 's/^.*(/nix/store/[a-z0-9-]*gcc-11.3.0).*$/\1/g')/lib"))
     (cider-lein-parameters . "with-profile +cider,+test repl :headless :host ::")
     (cider-inject-dependencies-at-jack-in))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
