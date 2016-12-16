(when (>= emacs-major-version 24)
    (require 'package)
    (package-initialize)
    (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			     ("melpa" . "http://elpa.emacs-china.org/melpa/")))
    )

;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar zhangyupeng/packages '(
	       ;; --- Auto-completion ---
                               better-defaults
                               ein
                               company
                               pyvenv
                               ivy
                               yasnippet
                               elpy
                               flycheck
                               py-autopep8
                               ;; --- Better Editor ---
                               hungry-delete
                               swiper
                               counsel
                               smartparens
                               ;; --- Major Mode ---
                               js2-mode
                               ;; --- Minor Mode ---
                               nodejs-repl
                               exec-path-from-shell
                               ;; --- Themes ---
                               monokai-theme
                               evil
                               ;; solarized-theme
                               ) "Default packages")

(setq package-selected-packages zhangyupeng/packages)

(defun zhangyupeng/packages-installed-p ()
    (loop for pkg in zhangyupeng/packages
	  when (not (package-installed-p pkg)) do (return nil)
	  finally (return t)))

(unless (zhangyupeng/packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg zhangyupeng/packages)
      (when (not (package-installed-p pkg))
	(package-install pkg))))

(provide 'init-packages)
