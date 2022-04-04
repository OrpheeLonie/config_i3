;;; personal_config.el -*- lexical-binding: t; -*-

;; (load-file "~/emacs.d.el")

(package-initialize)
(setq org-agenda-files (directory-files-recursively "/home/orphee/Documents" "\\.org$"))
