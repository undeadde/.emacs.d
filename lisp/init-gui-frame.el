;;----------------------------------------------------------------------------
;; Suppress GUI features
;;----------------------------------------------------------------------------

;;----------------------------------------------------------------------------
;; Show a marker in the left fringe for lines not in the buffer
;;----------------------------------------------------------------------------

;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; 关闭文件滑动控件
(when (fboundp 'set-scroll-bar-mode)
  (set-scroll-bar-mode -1))

(setq cursor-type 'bar)

;; 关闭启动帮助画面
(setq inhibit-splash-screen t)

(add-hook 'after-make-frame-functions
          (lambda (frame)
            (with-selected-frame frame
              (unless window-system
                (set-frame-parameter nil 'menu-bar-lines 0)))))

;; 显示行号
(global-linum-mode t)

(provide 'init-gui-frame)

