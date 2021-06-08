;;; ============配置dired相关=============


;; 在Emacs中使用终端程序ranger
(use-package ranger
  :defer t 
; :disabled
  :ensure t
  :config
  (ranger-override-dired-mode 1))

(use-package dired
  :defer t 
  :hook (dired-mode . dired-hide-details-mode))

(provide 'init-dired)

