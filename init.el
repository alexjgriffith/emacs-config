(setq default-directory "~/")

(defvar cask-file-location nil)

(cond ((equal system-type 'gnu/linux)
       (setq cask-file-location "~/.cask/cask.el") )
      ((equal system-type 'windows-nt)
       (setq cask-file-location "~/.cask/cask.el") )
      ((equal system-type 'darwin)
       (setq cask-file-location "/usr/local/share/emacs/site-lisp/cask/cask.el")))

(require 'cask cask-file-location)

(cask-initialize)

(require 'pallet)
(pallet-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#424242" "#d54e53" "#b9ca4a" "#e7c547" "#7aa6da" "#c397d8" "#70c0b1" "#eaeaea"))
 '(beacon-color "#d54e53")
 '(custom-safe-themes
   (quote
    ("de1f10725856538a8c373b3a314d41b450b8eba21d653c4a4498d52bb801ecd2" "88c01ff045b19e95f02c946e0007ad0ba25387200f3b2c95e3a84740518a701f" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "2cfc1cab46c0f5bae8017d3603ea1197be4f4fff8b9750d026d19f0b9e606fae" "3b5ce826b9c9f455b7c4c8bff22c020779383a12f2f57bf2eb25139244bb7290" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(fci-rule-color "#424242")
 '(fennel-mode-switch-to-repl-after-reload nil)
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(global-company-mode t)
 '(nrepl-message-colors
   (quote
    ("#032f62" "#6a737d" "#d73a49" "#6a737d" "#005cc5" "#6f42c1" "#d73a49" "#6a737d")))
 '(package-selected-packages
   (quote
    (eglot toml-mode lsp-ui use-package company-lsp lsp-mode camcorder dionysos ox-hugo shimbun wanderlust exec-path-from-shell paredit brutalist-theme dired-sidebar clojure-mode-extra-font-locking inf-clojure cider json-mode geiser guile-scheme hackernews racer company-racer flycheck-rust cargo rust-mode lua-mode elixir-mode ob-elixir w3m ace-window github-modern-theme github-theme cask-mode ag flymake-jshint protobuf-mode elm-mode ereader company-erlang ivy-erlang-complete writeroom-mode web-mode smart-mode-line rope-read-mode rainbow-delimiters pallet openwith nodejs-repl neotree mode-icons markdown-mode magit impatient-mode flyspell-lazy flycheck ess-R-object-popup ess-R-data-view erlang emojify elpy el-mock discover counsel-projectile company-jedi company-distel color-theme-sanityinc-tomorrow)))
 '(pdf-view-midnight-colors (quote ("#6a737d" . "#fffbdd")))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#d54e53")
     (40 . "#e78c45")
     (60 . "#e7c547")
     (80 . "#b9ca4a")
     (100 . "#70c0b1")
     (120 . "#7aa6da")
     (140 . "#c397d8")
     (160 . "#d54e53")
     (180 . "#e78c45")
     (200 . "#e7c547")
     (220 . "#b9ca4a")
     (240 . "#70c0b1")
     (260 . "#7aa6da")
     (280 . "#c397d8")
     (300 . "#d54e53")
     (320 . "#e78c45")
     (340 . "#e7c547")
     (360 . "#b9ca4a"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(mapc 'load (directory-files "~/.emacs.d/custom" t "^[0-9]+.*\.el$"))

(with-eval-after-load 'ox
  (require 'ox-hugo))
