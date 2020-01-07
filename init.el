(require 'desktop)
(desktop-save-mode 1)

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



(add-to-list 'load-path "~/emacs")

(setq compile-command "cd ~/bin; make serve-superset")

(require 'init-window-system)

(require 'python-setup)
(require 'shell-setup)

(require 'backup)
(require 'tail-mode)


(require 'ido-setup)
