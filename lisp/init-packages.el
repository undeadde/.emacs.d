(when (>= emacs-major-version 24)
    (require 'package)
    (package-initialize)
    (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			     ("melpa" . "http://elpa.emacs-china.org/melpa/")
                             ("ELPA" . "http://tromey.com/elpa/")
                             ("gnu" . "http://elpa.gnu.org/packages/")
                             ("melpa" . "http://melpa.milkbox.net/packages/")
                             ("marmalade" . "http://marmalade-repo.org/packages/")
                             ("melpa" . "http://melpa.milkbox.net/packages/")
                             ("technomancy" . "http://repo.technomancy.us/emacs/")
                             )))

;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar zhangyupeng/packages
  '(
    better-defaults
    company
    counsel
    ein
    elpy
    erlang
    evil
    evil-surround
    evil-visualstar
    evil-mc
    evil-mark-replace
    evil-escape
    evil-space
    evil-numbers
    evil-matchit
    evil-nerd-commenter
    exec-path-from-shell
    flycheck
    fill-column-indicator
    general
    hungry-delete
    ivy
    js2-mode
    key-chord
    nodejs-repl
    powerline
    py-autopep8
    pyvenv
    rainbow-delimiters
    slime
    smartparens
    smooth-scrolling
    solarized-theme
    surround
    swiper
    yasnippet
    youdao-dictionary
    )
  "Default packages")

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
