
(use-package eaf 
  :ensure t
  :quelpa (eaf 
      :fetcher github 
      :repo "manateelazycat/emacs-application-framework"
      :files ("*"))
  :init
  (use-package epc :defer t :ensure t)
  (use-package ctable :defer t :ensure t)
  (use-package deferred :defer t :ensure t)
  (use-package s :defer t :ensure t)
  :custom
  (eaf-browser-continue-where-left-off t)
  :config
  (eaf-setq eaf-browser-enable-adblocker "true")
  (eaf-bind-key scroll_up "C-n" eaf-pdf-viewer-keybinding)
  (eaf-bind-key scroll_down "C-p" eaf-pdf-viewer-keybinding)
  (eaf-bind-key take_photo "p" eaf-camera-keybinding)
  (eaf-bind-key nil "M-q" eaf-browser-keybinding) ;; unbind, see more in the Wiki

  (setq eaf-proxy-type "http")
  (setq eaf-proxy-host "127.0.0.1")
  (setq eaf-proxy-port "7890")

  ;; setting for eaf brower
  (eaf-setq eaf-browser-default-zoom "2.0")
  )

(provide 'init-eaf)
