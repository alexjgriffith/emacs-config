;; (add-hook 'rust-mode-hook #'racer-mode)
;; (add-hook 'racer-mode-hook #'eldoc-mode)

;; (add-hook 'racer-mode-hook #'company-mode)

(setq racer-command-timeout 0.5)
(setq racer-eldoc-timeout 0.3)

(require 'rust-mode)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)

(add-hook 'rust-mode-hook 'eglot-ensure)
(add-hook 'rust-mode-hook #'eldoc-mode)
(add-hook 'rust-mode-hook #'company-mode)
