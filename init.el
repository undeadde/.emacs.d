
;; -*- coding: utf-8 -*-
(package-initialize)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))


(require 'init-packages)
(require 'init-gui-frame)
(require 'init-font)
(require 'init-theme)
(require 'init-self-func)
(require 'init-keybindings)
(require 'init-js)
(require 'init-org)
(require 'init-elpy)

;; 禁止 Emacs 自动生成备份文件
(setq make-backup-files nil)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)

(delete-selection-mode t)

;; Find Executable Path on OS X
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
(evil-mode 1)
