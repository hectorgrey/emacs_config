;; -*- lexical-binding: t -*-

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
	(url-retrieve-synchronously
	 "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
	 'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)

(use-package straight
  :custom
  (straight-use-package-by-default t))

(load-theme 'modus-vivendi)

(use-package vertico
  :init
  (vertico-mode))
(use-package orderless)
(use-package consult)
(use-package marginalia)
(use-package embark-consult)
(use-package embark)

(use-package corfu
  :custom
  (corfu-cycle t)
  :init
  (global-corfu-mode))
(use-package cape)
(use-package eglot)

(use-package which-key
  :init
  (which-key-mode))
(use-package magit)
