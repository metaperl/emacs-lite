
(setq dired-dwim-target t)

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
          'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(setq compile-command "cd ~/bin; make serve-superset")


(add-to-list 'load-path "~/emacs")

(require 'init-desktop)


(require 'init-window-system)
(require 'init-python)
(require 'init-shell)
(require 'init-backup)
(require 'init-tail-mode)
(require 'init-ido-setup)
