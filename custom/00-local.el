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

(cond ((equal (system-name) "dev.local") (dev-local)))
