;;;;;;;;;;;;;
;; 基础模块 ;;
;;;;;;;;;;;;;
(require 'init-package)

;;;;;;;;;;;;;;
;; 基础配置  ;;
;;;;;;;;;;;;;;
(require 'init-basic)

; ;;;;;;;;;;;;;
; ;; variable ;;
; ;;;;;;;;;;;;;
(require 'init-variable)


; ;;;;;;;;;;;;;
; ;; 用户界面 ;;
; ;;;;;;;;;;;;;
(require 'init-ui)
;
; ;;;;;;;;;;;;;
; ;; 代码补全 ;;
; ;;;;;;;;;;;;;
(require 'init-complete)
(require 'init-prog)
;
; ;;;;;;;;;;;;;;
; ;; lsp-mode ;;
; ;;;;;;;;;;;;;;
(require 'init-lsp)
;
; ;;;;;;;;;;;;;;
; ;; treemacs ;;
; ;;;;;;;;;;;;;;
(require 'init-treemacs)
;
; ;;;;;;;;;;;;;;
; ;; hydra ;;
; ;;;;;;;;;;;;;;
(require 'init-hydra)
;
; ;;;;;;;;;;;;;;
; ;; eaf ;;   ;;mac 上兼容性不好
; ;;;;;;;;;;;;;;
; ; (require 'init-eaf)
;
;
; ;;;;;;;;;;;;;;
; ;; helm ;;
; ;;;;;;;;;;;;;;
; (require 'init-helm)
;
; ;;;;;;;;;;;;;;;;;
; ;; awesome-tab ;;
; ;;;;;;;;;;;;;;;;;
; (require 'init-awesome-tab)
;
;
;;;;;;;;;;;;;;
;; org ;;
;;;;;;;;;;;;;;
(require 'init-org)
;
;
;;;;;;;;;;;;;;
;; keybind ;;
;;;;;;;;;;;;;;
(require 'init-keybind)


;;;;;;;;;;;;;;
;; snail ;;
;;;;;;;;;;;;;;
(require 'init-snail)


(provide 'init-config)

