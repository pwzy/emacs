;; 著名的Emacs补全框架
(use-package company 
    :ensure t
    :defer t
    :config
    (setq company-idle-delay 0 
        company-minimum-prefix-length 1)
    :hook 
    (after-init . global-company-mode)
    )

;; 美化company
(use-package company-box 
  :defer t 
  :ensure t 
  :hook (company-mode . company-box-mode))

;; 代码片段
(use-package yasnippet 
  :defer t 
  :ensure t
  :config
  (setq yas-snippet-dirs '("~/.emacs.d/var/snippets"))
  (yas-global-mode 1))

(use-package yasnippet-snippets
  :ensure t)
  
;; 彩虹括号插件
(use-package rainbow-delimiters
  :ensure t
  :config 
  (rainbow-delimiters-mode 1))



(provide 'init-complete)
