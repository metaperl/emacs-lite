(require 'ido)
(ido-mode)
(ido-everywhere)



(setq 
 ido-enable-flex-matching t
 ido-use-filename-at-point 'guess
 )


(setq ido-ignore-extensions t)
(add-to-list 'completion-ignored-extensions ".pyc")

(setq ido-create-new-buffer 'always)
(global-set-key (kbd "C-x b") 'ido-switch-buffer)

(setq ido-use-virtual-buffers t)



(provide 'init-ido-setup)
