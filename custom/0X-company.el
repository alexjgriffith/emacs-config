(require 'company)
(setq company-mode-idle-delay 0.1)
(setq company-minimum-prefix-length 3)
(global-set-key (read-kbd-macro "M-/") 'company-manual-begin)
