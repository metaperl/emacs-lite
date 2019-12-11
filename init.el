(require 'desktop)
(desktop-save-mode 1)

(setq dired-dwim-target t)


(add-to-list 'load-path "~/emacs")

(setq compile-command "cd ~/bin; make serve-superset")

(require 'init-window-system)

(require 'python-setup)
(require 'shell-setup)

(require 'backup)
(require 'tail-mode)


(require 'ido-setup)
