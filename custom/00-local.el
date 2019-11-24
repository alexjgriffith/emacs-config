(defun dev-local ()
  (load "~/.emacs.d/capture/Capture.el")
  (set-default-font "source code pro")
  (let ((strings '("/opt/local/bin/"
                 "~/bin/"
                 "~/.cargo/bin/"
                 "/usr/local/bin"
                 "/usr/bin"
                 "/bin"
                 "/usr/sbin"
                 "/sbin"
                 "/opt/X11/bin"
                 "/Library/TeX/texbin"
                 "~/.luarocks/bin/"
                 "~/bin/Fennel/"
                 )))
  (setenv "PATH" (concat (getenv "PATH") (replace-regexp-in-string "/" "/" (replace-regexp-in-string ".$" "" (apply #'concat (mapcar (lambda(x) (concat x ":")) strings))))))
  (setq exec-path (append exec-path strings))))

(defun dev-work ()
  (load "~/.emacs.d/lisp/yank-gets.el")
  (add-to-list 'load-path "~/.emacs.d/lisp/sorbae/lisp")
  (require 'sorbae)
  (setenv "SHELL" "c:/users/ALGRIFFI/home/algriffi/binaries/msys64/usr/bin/bash.exe")
  (setq explicit-shell-file-name
        "c:/users/ALGRIFFI/home/algriffi/binaries/msys64/usr/bin/bash.exe")
  (defvar orig-path (getenv "PATH"))
  (defvar orig-exec-path exec-path)
  (let ((strings `("~/binaries/apache-maven-3.6.2-bin/apache-maven-3.6.2/bin"
                   "~/binaries/msys64/usr/bin/"
                   "~/binaries/msys64/usr/local/bin/"
                   "~/binaries/msys64/bin/"
                   "~/binaries/msys64/opt/bin/"
                   "~/binaries/lua-5.3.5/fennel"
                   "~/binaries/jdk1.8.0_111/jre/bin"
                   "~/binaries/jdk1.8.0_111/jre/bin/server"
                   "~/binaries/R/R-3.3.1/bin/x64/"
                   "~/binaries/hunspell-1.3.2-3/bin/"
                   "~/binaries/gpg/gpg4usb/bin/"
                   "~/binaries/xpdfbin-win-3.04/bin64/"
                   "~/binaries/docx2txt-1.4/"
                   "~/bin/"
                   "~/binaries/emacs-26.3-x86_64/bin"
                   "~/binaries/pandoc/"
                   "~/binaries/lua-5.3.5/")))
    (setenv "PATH" (concat orig-path ";"(replace-regexp-in-string "/" "\\\\" (replace-regexp-in-string ".$" "" (apply #'concat (mapcar (lambda(x) (concat x ";")) strings))))))
  (setq exec-path (append orig-exec-path strings)))
  (setq epg-gpg-program "~/binaries/gpg/gpg4usb/bin/gpg.exe")
  (setq ispell-program-name "~/binaries/hunspell-1.3.2-3/bin/hunspell.exe")
  (setq ispell-local-dictionary "en_US")
  (require 'ispell)
  (setq ispell-local-dictionary-alist
        ;; Please note the list `("-d" "en_US")` contains ACTUAL parameters passed to hunspell
        ;; You could use `("-d" "en_US,en_US-med")` to check with multiple dictionaries
        '(("en_US" "[[:alpha:]]" "[^[:alpha:]]" "[']" t ("-d" "en_US") nil iso-8859-1)))
  (setq  tramp-default-method "pscp")
  (set 'tramp-encoding-shell "~/binaries/MinWG/msys/1.0/bin/bash.exe")
  (set 'tramp-encoding-command-switch "-c")
  (set 'tramp-encoding-command-interactive "-i"))

(cond ((equal (system-name) "dev.local") (dev-local))
      ((equal (system-name) "HC276587") (dev-work)))
