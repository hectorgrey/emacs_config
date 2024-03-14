;; Some basic config so this works properly

(global-display-line-numbers-mode 1)

(setq inhibit-startup-message t)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(save-place-mode 1)

(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)

(load-theme 'modus-vivendi)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(use-package magit
  :ensure t)
(use-package evil
  :diminish
  :ensure t)
(evil-mode 1)

(use-package ivy
  :ensure t
  :diminish
  :bind (("C-s" . swiper)
	 :map ivy-minibuffer-map
	 ("TAB" . ivy-alt-done)
	 ("C-l" . ivy-alt-done)
	 ("C-j" . ivy-next-line)
	 ("C-k" . ivy-previous-line)
	 :map ivy-switch-buffer-map
	 ("C-k" . ivy-previous-line)
	 ("C-j" . ivy-next-line)
	 ("C-l" . ivy-done)
	 ("C-d" . ivy-switch-buffer-kill)
	 :map ivy-reverse-i-search-map
	 ("C-k" . ivy-previous-line)
	 ("C-j" . ivy-next-line)
	 ("C-d" . ivy-reverse-i-search-kill)))
(ivy-mode 1)
