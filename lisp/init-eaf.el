

(quelpa '(eaf :fetcher github
              :repo  "manateelazycat/emacs-application-framework"
              :files ("*")))

(use-package eaf 
  :ensure t
  :quelpa (eaf 
      :fetcher github 
      :repo "manateelazycat/emacs-application-framework"
      :files ("*"))
  :custom
  (eaf-browser-continue-where-left-off t)
  :config
  (eaf-setq eaf-browser-enable-adblocker "true")
  (eaf-bind-key scroll_up "C-n" eaf-pdf-viewer-keybinding)
  (eaf-bind-key scroll_down "C-p" eaf-pdf-viewer-keybinding)
  (eaf-bind-key take_photo "p" eaf-camera-keybinding)
  (eaf-bind-key nil "M-q" eaf-browser-keybinding))

;; 一些依赖包
(use-package ctable
  :defer t
  :ensure t)
(use-package deferred
  :defer t
  :ensure t)
(use-package epc
  :defer t
  :ensure t)
(use-package s
  :defer t
  :ensure t)


(provide 'init-eaf)
