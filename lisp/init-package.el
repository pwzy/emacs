(require 'package)
(package-initialize)

; (setq package-archives '(("gnu"   . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/gnu/")
;                          ("melpa" . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/melpa/")
;                          ("melpa-stable" . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/melpa-stable/")
;                          ("org" . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/org/")))


; (setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
;                          ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
;                          ("org"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))

; ;; Emacs China ELPA
; (setq package-archives
;       '(("gnu"   . "https://elpa.emacs-china.org/gnu/")
;         ("melpa" . "https://elpa.emacs-china.org/melpa/")
;         ("org"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))

;; Wangyi ELPA
(setq package-archives
      '(("gnu"   . "http://mirrors.163.com/elpa/gnu/")
        ("melpa" . "http://mirrors.163.com/elpa/melpa/")
        ("org"   . "http://mirrors.163.com/elpa/org/")))



;; 安装use-package包管理器
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

; (use-package esup
;   :ensure t)


;; 安装quelpa包管理器（用于安装github上的插件）
(unless (package-installed-p 'quelpa)
  (with-temp-buffer
    (url-insert-file-contents "https://raw.githubusercontent.com/quelpa/quelpa/master/quelpa.el")
    (eval-buffer)
    (quelpa-self-upgrade))
  (quelpa
   '(quelpa-use-package
     :fetcher git
     :url "https://github.com/quelpa/quelpa-use-package.git")))
(require 'quelpa-use-package)

(setq quelpa-upgrade-interval 7
      quelpa-update-melpa-p nil)


(use-package exec-path-from-shell
  :ensure t
  :config
  (exec-path-from-shell-initialize))

(use-package restart-emacs
  :ensure t)

; (use-package ranger
;   :ensure t
;   :config
;   (ranger-override-dired-mode t))

(use-package ranger
  :ensure t
  :config
  (ranger-override-dired-mode t)
  (setq ranger-override-dired 'ranger
        ranger-show-hidden t))

(use-package vterm
    :ensure t)

(provide 'init-package)
