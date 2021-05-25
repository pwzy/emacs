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


(provide 'init-complete)
