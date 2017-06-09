
;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file);; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode

;; 设置 org-agenda 打开快捷键
(global-set-key (kbd "C-c a") 'org-agenda)

;; 设置 youdao-dictionary 快捷键
(global-set-key (kbd "C-c y") 'youdao-dictionary-search-at-point+)

(provide 'init-keybindings)
