; (menu-bar-mode -1)
; (tool-bar-mode -1)
; (scroll-bar-mode -1)

;;;;;;;;;;;;;
;; 基础模块 ;;
;;;;;;;;;;;;;
; (require '+autoload)
; (require '+config)
(require 'init-package)
(require 'init-variable)
; ;;;;;;;;;;;;;;
; ;; 基础配置  ;;
; ;;;;;;;;;;;;;;
(require 'init-basic)

; ;;;;;;;;;;;;;
; ;; keybind ;;
; ;;;;;;;;;;;;;
(require '+mini-keybind)
(require 'init-keybind)

; ;;;;;;;;;;;;;
; ;; 用户界面 ;;
; ;;;;;;;;;;;;;
(require 'init-ui)

; ;;;;;;;;;;;;;
; ;; 代码补全 ;;
; ;;;;;;;;;;;;;
(require 'init-complete)
(require 'init-prog)

; ;;;;;;;;;;;;;
; ;; 实用工具 ;;
; ;;;;;;;;;;;;;
(require 'init-tools)

; ;;;;;;;;;;;;;
; ;; Dired!! ;;
; ;;;;;;;;;;;;;
(require 'init-dired)

; ;;;;;;;;;;;;;;
; ;; lsp-mode ;;
; ;;;;;;;;;;;;;;
(require 'init-lsp)

; ; ;;;;;;;;;;;;;
; ; ;; OrgMode ;;
; ; ;;;;;;;;;;;;;
; (require 'init-org)
;
; ; ;;;;;;;;;;;;;
; ; ;; MrkDown ;;
; ; ;;;;;;;;;;;;;
; (require 'init-markdown)
;
; ; ;;;;;;;;;;;;;
; ; ;; VCTools ;;
; ; ;;;;;;;;;;;;;
; (require 'init-version-control)
;
; ; ;;;;;;;;;;;;;
; ; ;; ivyCONF ;;
; ; ;;;;;;;;;;;;;
; (require 'init-ivy)
;
; ; ;;;;;;;;;;;;;;
; ; ;; treemacs ;;
; ; ;;;;;;;;;;;;;;
; (require 'init-treemacs)
;
; ; ;;;;;;;;;;;;;;
; ; ;; flycheck ;;
; ; ;;;;;;;;;;;;;;
; (require 'init-flycheck)
;
; ; ;;;;;;;;;;;;
; ; ;; Python ;;
; ; ;;;;;;;;;;;;
; (require 'init-python)
; ;
; ; ;;;;;;;;;;
; ; ;; Java ;;
; ; ;;;;;;;;;;
; ; (require 'init-java)
; ;
; ; ;;;;;;;;;;;
; ; ;; C/C++ ;;
; ; ;;;;;;;;;;;
; (require 'init-cc)
; ;
; ; ;;;;;;;;;
; ; ;; Lua ;;
; ; ;;;;;;;;;
; ; (require 'init-lua)
; ;
; ; ;;;;;;;;;;;
; ; ;; ELisp ;;
; ; ;;;;;;;;;;;
; (require 'init-emacs-lisp)
;
; ; ;;;;;;;;;;;;
; ; ;; Scheme ;;
; ; ;;;;;;;;;;;;
; (require 'init-scheme)
;
; ; ;;;;;;;;;;;;;;;;;
; ; ;; common-lisp ;;
; ; ;;;;;;;;;;;;;;;;;
; (require 'init-common-lisp)
;
; ; ;;;;;;;;;;;;;
; ; ;; haskell ;;
; ; ;;;;;;;;;;;;;
; (require 'init-haskell)
;
; ; ;;;;;;;;;;
; ; ;; Rust ;;
; ; ;;;;;;;;;;
; ; (require 'init-rust)
;
; ; ;;;;;;;;;
; ; ;; Web ;;
; ; ;;;;;;;;;
; (require 'init-web)
;
; ; ;;;;;;;;;;
; ; ;; pyim ;;
; ; ;;;;;;;;;;
; ; ;; (require 'init-pyim)
; ;
; ; ;;;;;;;;;;;;;;;;;;
; ; ;; PopWinManage ;;
; ; ;;;;;;;;;;;;;;;;;;
; (require 'init-window)
;
; ; ;;;;;;;;;
; ; ;; eww ;;
; ; ;;;;;;;;;
; (require 'init-eww)
;
; ; ;;;;;;;;;;
; ; ;; meow ;;
; ; ;;;;;;;;;;
; (require 'init-meow)
;
; ; ;;;;;;;;;;
; ; ;; Hack ;;
; ; ;;;;;;;;;;
; (require 'init-graphic)
;
; ; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ; ;; Don't move/change/delete me! ;;
; ; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(provide 'init-config)
