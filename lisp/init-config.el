;;;;;;;;;;;;;
;; 基础模块 ;;
;;;;;;;;;;;;;
(require 'init-package)

;;;;;;;;;;;;;;
;; variable ;;
;;;;;;;;;;;;;;
(require 'init-variable)

;;;;;;;;;;;;;;
;; 基础配置  ;;
;;;;;;;;;;;;;;
(require 'init-basic)

;;;;;;;;;;;;;
;; 用户界面 ;;
;;;;;;;;;;;;;
(require 'init-ui)

;;;;;;;;;;;;;
;; 代码补全 ;;
;;;;;;;;;;;;;
(require 'init-complete)
(require 'init-debug)

;;;;;;;;;;;;;;
;; lsp-mode ;;
;;;;;;;;;;;;;;
(require 'init-lsp)

;;;;;;;;;;;;;;
;; treemacs ;;
;;;;;;;;;;;;;;
(require 'init-treemacs)

;;;;;;;;;;;;;;
;; hydra ;;
;;;;;;;;;;;;;;
(require 'init-hydra)


;;;;;;;;;;;;;;;;;
;; awesome-tab ;;
;;;;;;;;;;;;;;;;;
(require 'init-awesome-tab)


;;;;;;;;;;;;;;
;; org ;;;;;;;
;;;;;;;;;;;;;;
(require 'init-org)


;;;;;;;;;;;;;;
;; keybind ;;;
;;;;;;;;;;;;;;
(require 'init-keybind)


;;;;;;;;;;;;;;
;; snail ;;;;;
;;;;;;;;;;;;;;
(require 'init-snail)

;;;;;;;;;;;;;;
;; eaf   ;;;;;
;;;;;;;;;;;;;;
(require 'init-eaf)

;;;;;;;;;;;;;;
;; imenu-list;
;;;;;;;;;;;;;;
(require 'init-imenu)

;;;;;;;;;;;;;;
;; projectile;
;;;;;;;;;;;;;;
(require 'init-projectile)


(provide 'init-config)
