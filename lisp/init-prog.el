
;; 大量可用的代码片段
(use-package 
  yasnippet-snippets 
  :ensure t
  :after yasnippet)


(use-package dap-mode
 :defer t 
 :ensure t
 :config
 (require 'dap-python)
 (require 'dap-lldb)
 ;; 参考https://github.com/emacs-lsp/dap-mode/issues/428
 (add-to-list 'display-buffer-alist '(" server log\\*\\'" display-buffer-at-bottom (window-height . 0.2)))
 )



(provide 'init-prog)
