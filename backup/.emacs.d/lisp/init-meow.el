(use-package meow
  :if is-need-meow-module
  :quelpa ((meow :fetcher github :repo "doglooksgood/meow"))
  :init
  (defun meow-setup ()
    (meow-motion-overwrite-define-key
     '("j" . meow-next) 
     '("k" . meow-prev)
     '("h" . meow-head)
     '("l" . meow-tail))
    (meow-leader-define-key
     ;; SPC j/k will run the original command in MOTION state.
     '("j" . meow-motion-origin-command)
     '("k" . meow-motion-origin-command)
     '("h" . meow-motion-origin-command)
     ;; Use SPC (0-9) for digit arguments.
     '("1" . meow-digit-argument)
     '("2" . meow-digit-argument)
     '("3" . meow-digit-argument)
     '("4" . meow-digit-argument)
     '("5" . meow-digit-argument)
     '("6" . meow-digit-argument)
     '("7" . meow-digit-argument)
     '("8" . meow-digit-argument)
     '("9" . meow-digit-argument)
     '("0" . meow-digit-argument)
     '("b" . evan/hydra-music-menu/body)
     '("o" . evan/hydra-open-menu/body)
     '("t" . evan/hydra-toggle-menu/body)
     '("c" . evan/hydra-code-menu/body)
     '("p" . evan/hydra-project-menu/body)
     '("g" . evan/hydra-common-menu/body)
     '("a" . evan/hydra-app-menu/body)
     '("w" . evan/hydra-window-menu/body)
     '("r" . evan/awesome-fast-switch/body))
    (meow-normal-define-key
     '("0" . meow-expand-0)
     '("9" . meow-expand-9)
     '("8" . meow-expand-8)
     '("7" . meow-expand-7)
     '("6" . meow-expand-6)
     '("5" . meow-expand-5)
     '("4" . meow-expand-4)
     '("3" . meow-expand-3)
     '("2" . meow-expand-2)
     '("1" . meow-expand-1)
     '("-" . negative-argument)
     '(";" . meow-reverse)
     '("," . meow-inner-of-thing)
     '("." . meow-bounds-of-thing)
     '("[" . meow-beginning-of-thing)
     '("]" . meow-end-of-thing)
     '("a" . meow-append)
     '("A" . meow-open-below)
     '("b" . meow-back-word)
     '("B" . meow-back-symbol)
     '("c" . meow-change)
     '("C" . meow-change-save)
     '("d" . meow-delete)
     '("x" . meow-line)
     '("f" . meow-find)
     '("F" . meow-find-expand)
     '("g" . meow-keyboard-quit)
     '("G" . goto-line)
     '("h" . meow-head)
     '("H" . meow-head-expand)
     '("i" . meow-insert)
     '("I" . meow-open-above)
     '("m" . meow-join)
     '("M" . delete-indentation)
     '("s" . meow-kill)
     '("t" . meow-till)
     '("T" . meow-till-expand)
     '("w" . meow-mark-word)
     '("W" . meow-mark-symbol)
     '("j" . meow-next)
     '("J" . meow-next-expand)
     '("o" . meow-block)
     '("O" . meow-block-expand)
     '("k" . meow-prev)
     '("K" . meow-prev-expand)
     '("q" . meow-quit)
     '("r" . meow-replace)
     '("R" . meow-replace-save)
     '("n" . meow-search)
     '("N" . meow-pop-search)
     '("l" . meow-tail)
     '("L" . meow-tail-expand)
     '("u" . undo)
     '("v" . meow-visit)
     '("e" . meow-next-word)
     ;; '("e" . meow-next-symbol)
     '("y" . meow-save)
     '("p" . meow-yank)
     '("P" . yank)
     '("z" . meow-pop-selection)
     '("Z" . meow-pop-all-selection)
     '("&" . meow-query-replace)
     '("%" . meow-query-replace-regexp)
     '("<escape>" . meow-last-buffer)))
  
  :config
  ;; 开启meow
  (meow-global-mode +1)
  ;; 关闭输入覆盖
  (delete-selection-mode -1)
  ;; 设置按键
  (meow-setup)
  ;; 设置modeline模式标记字符串
  (meow-setup-indicator)
  ;; 设置按键帮助显示为qwerty布局
  (setq meow-cheatsheet-layout meow-cheatsheet-layout-qwerty)
  ;; 设置modeline模式标记字符串内容
  (setq meow-replace-state-name-list
        '((normal . "NORMAL")
          (insert . "INSERT")
          (keypad . "KEYPAD")
          (motion . "MOTION")))
  ;; 添加指定模式到normal模式列表
  (add-to-list 'meow-normal-state-mode-list 'helpful-mode)
  (add-to-list 'meow-normal-state-mode-list  'Info-mode)
  (add-to-list 'meow-normal-state-mode-list 'cargo-process-mode)
  (add-to-list 'meow-normal-state-mode-list 'sly-mrepl-mode)
  (add-to-list 'meow-normal-state-mode-list 'erc-mode)
  (global-set-key (kbd "s-SPC") meow-leader-keymap))


(provide 'init-meow)
