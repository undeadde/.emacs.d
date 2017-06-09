;;----------------------------------------------------------------------------
;; Suppress GUI features
;;----------------------------------------------------------------------------

;;----------------------------------------------------------------------------
;; Show a marker in the left fringe for lines not in the buffer
;;----------------------------------------------------------------------------

;; no tool bar
(tool-bar-mode 0)
(set-scroll-bar-mode 0)
(menu-bar-mode 0)

(setq initial-frame-alist (quote ((fullscreen . maximized))))

(setq cursor-type 'bar)

;; inhibit start message
(setq inhibit-splash-screen t)

;; number line mode
(global-linum-mode t)

;; Cursor, please do not blink
(blink-cursor-mode nil)

;; Do not make backup files
(setq make-backup-files nil)

;; When emacs asks for "yes" or "no", let "y" or "n" sufficide
(fset 'yes-or-no-p 'y-or-n-p)

;; Show column number in mode line
(setq column-number-mode t)

;; When point is on paranthesis, highlight the matching one
(show-paren-mode t)

;; auto-save
(add-hook 'before-save-hook (lambda () (delete-trailing-whitespace)))

(provide 'init-gui-frame)
