;; 开启全屏 
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; 设置光标颜色
;; (set-cursor-color "green")
;; 设置光标样式
(setq-default cursor-type 'box)
;; 去除默认启动界面
(setq inhibit-startup-message t)

;; 高亮当前行
(global-hl-line-mode 1)

;; 主题包									
(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-Iosvkem t))


(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode)
  :config
  (setq doom-modeline-height 5
        doom-modeline-bar-width 4
        doom-modeline-bar t
        doom-modeline-icon t
        doom-modeline-env-python-executable "python")
  :custom-face
  ;; 参考 https://github.com/seagle0128/doom-modeline/issues/187
  (mode-line ((t (:height 0.8))))
  (mode-line-inactive ((t (:height 0.8))))
  )

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (dashboard-modify-heading-icons '((recents . "file-text") 
                                    (bookmarks . "book")))
  ;; 设置标题
  (setq dashboard-banner-logo-title
        "Welcome to pwzy's Emacs ~~~~~")
  ;; 设置banner
  (setq dashboard-startup-banner "~/.emacs.d/elpa/dashboard-20210427.705/banners/logo.png")
  (setq dashboard-center-content t)
  (setq dashboard-show-shortcuts nil)
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-navigator t)
  (add-hook 'after-init-hook (lambda () (dashboard-refresh-buffer))))

(use-package all-the-icons
  :defer t 
  :ensure t)


;; 竖线 很重要
(use-package page-break-lines

    :defer t 
  :ensure t
  :hook (after-init . global-page-break-lines-mode)
  :config
  (set-fontset-font "fontset-default"
                  (cons page-break-lines-char page-break-lines-char)
                  (face-attribute 'default :family))
  (let ((table (make-char-table nil)))                   ;; make a new empty table
    (set-char-table-parent table char-width-table)       ;; make it inherit from the current char-width-table
    (set-char-table-range table page-break-lines-char 1) ;; let the width of page-break-lines-char be 1
    (setq char-width-table table)))

;; 让info帮助信息中关键字有高亮
(use-package info-colors 
    :defer t 
  :ensure t 
  :hook ('Info-selection-hook . 'info-colors-fontify-node))

;; 缩进线
(use-package highlight-indent-guides
    :defer t 
  :ensure t
  :hook (prog-mode . highlight-indent-guides-mode)
  :config
  (setq highlight-indent-guides-method 'bitmap))

(use-package ivy-posframe
    ; :defer t
  :ensure t
  :custom-face
  (ivy-posframe-border ((t (:background "#336774"))))

  :config
    (setq ivy-posframe-height-alist '((swiper . 10)
                                  (t      . 10)))
    (setq ivy-posframe-display-functions-alist
      '((swiper          . ivy-posframe-display-at-frame-center)
        (complete-symbol . ivy-posframe-display-at-frame-center)
        (counsel-M-x     . ivy-posframe-display-at-frame-center)
        (t               . ivy-posframe-display-at-frame-center)))
    (setq ivy-posframe-parameters '(
        ; (internal-border-width . 1)
        (left-fringe . 20)
        (right-fringe . 20)
        (top-fringe . 20))
        ;;ivy-posframe '((t (:background "#333244")))
        ;;ivy-posframe-border '((t (:background "#abff00")))
        ;;ivy-posframe-cursor '((t (:background "#00ff00")))
        )
    (setq ivy-posframe-border-width 5)
    (ivy-posframe-mode 1)
  )

(use-package transwin
  :ensure t
  :config 
  (transwin-ask-set-transparency 85)
  )

(provide 'init-ui)
