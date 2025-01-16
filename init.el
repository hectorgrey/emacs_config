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

(setq backup-inhibited t)

(load-theme 'modus-vivendi)
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)
(setq inhibit-splash-screen 1)
(set-face-attribute 'default nil :height 140)

(use-package ace-window
  :config
  (global-set-key (kbd "C-x o") 'ace-window)
  :init
  (ace-window-display-mode 1))

(use-package evil
  :init
  (evil-mode))

(use-package vertico
  :init
  (vertico-mode))
(use-package orderless)
(use-package consult)
(use-package marginalia
  :init
  (marginalia-mode))
(use-package embark-consult)
(use-package embark)

(use-package corfu
  :custom
  (corfu-cycle t)
  (corfu-auto t)
  :init
  (global-corfu-mode 1)
  (corfu-echo-mode 1)
  (corfu-popupinfo-mode 1))
(use-package nerd-icons-corfu)
(use-package all-the-icons
  :if (display-graphic-p))

(use-package cape)

(use-package which-key
  :init
  (which-key-mode))
(use-package magit)

(use-package toc-org
  :commands toc-org-enable
  :init (add-hook 'org-mode-hook 'toc-org-enable))
(use-package org-modern
  :init (add-hook 'org-mode-hook 'org-modern-mode))
(use-package org-tempo
  :straight nil)

(use-package eglot)

(use-package treesit-auto
  :custom
  (treesit-auto-install-all)
  :config
  (global-treesit-auto-mode 1))

(use-package glsl-mode)
(use-package rust-mode)
(use-package zig-mode)
(use-package lua-mode)
(use-package haskell-mode)
