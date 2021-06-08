
; (setq warning-minimum-level :emergency)
; (setq gc-cons-threshold-original gc-cons-threshold)
; (setq gc-cons-threshold (* 10240 1000000))
; (setq file-name-handler-alist-original file-name-handler-alist)
; (setq file-name-handler-alist nil)
;
; (put 'dired-find-alternate-file 'disabled nil))
; (put 'downcase-region 'disabled nil)

;; 图形界面插件的设置
(setq graphic-only-plugins-setting ()) 

(setq gp-count 0)
(push '(setq gp-count (1+ gp-count)) graphic-only-plugins-setting)


(add-to-list 'load-path
    (expand-file-name (concat user-emacs-directory "lisp")))

;; 所有配置自带的模块
(require 'init-config)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(quelpa-use-package quelpa use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
