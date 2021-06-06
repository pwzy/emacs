
(use-package hydra
  :ensure t
  :defer t
  :config 
  (add-hook 'dap-stopped-hook
          (lambda (arg) (call-interactively #'dap-hydra)))

  ;; 主菜单
  (defhydra pwzy/hydra-main-menu ()
  "
                                         ^Main Menu^
  [_d_] ^Debug^    [_h_] ^Dap-Hydra^    [_t_] ^Tools^    ^[_v_] ^VIM^    [_a_] ^Awesome-Tab^
  "
  ; [_t_] ^tab-bar^
  ("d" pwzy/hydra-debug-menu/body nil :color blue)
  ("h" dap-hydra nil :color blue)
  ("t" pwzy/hydra-tool-menu/body nil :color blue)
  ("v" pwzy/hydra-vim-menu/body nil :color blue)
  ("a" pwzy/hydra-tab-menu/body nil :color blue)
  ;; ("t" evan/hydra-tab-bar-menu/body nil :color blue)
  ("ESC" nil "quit" :color blue)
  ("q" nil "quit" :color blue))

  :bind (("M-SPC" . pwzy/hydra-main-menu/body)
         )
  )


; (use-package major-mode-hydra
;   :after hydra
;   :preface
;   (defun with-alltheicon (icon str &optional height v-adjust)
;     "Displays an icon from all-the-icon."
;     (s-concat (all-the-icons-alltheicon icon :v-adjust (or v-adjust 0) :height (or height 1)) " " str))
;
;   (defun with-faicon (icon str &otional height v-adjust)
;     "Displays an icon from Font Awesome icon."
;     (s-concat (all-the-icons-faicon icon :v-adjust (or v-adjust 0) :height (or height 1)) " " str))
;
;   (defun with-fileicon (icon str &optional height v-adjust)
;     "Displays an icon from the Atom File Icons package."
;     (s-concat (all-the-icons-fileicon icon :v-adjust (or v-adjust 0) :height (or height 1)) " " str))
;
;   (defun with-octicon (icon str &optional height v-adjust)
;     "Displays an icon from the GitHub Octicons."
;     (s-concat (all-the-icons-octicon icon :v-adjust (or v-adjust 0) :height (or height 1)) " " str)))


; (use-package hydra-posframe
;   :quelpa (hydra-posframe
;   :fetcher github
;   :repo "Ladicle/hydra-posframe")
;   :config
;   (setq hydra-posframe-border-width 5)
;   (setq hydra-posframe-parameters
;    '((left-fringe . 20)
;      (right-fringe . 20)
;      ; (top-fringe . 20)
;      ; (Bottom-fringe . 20)
;      ))
;   :hook (after-init . hydra-posframe-enable))

; (use-package dash
;   :ensure t)
;
; (use-package s
;   :ensure t)

(use-package pretty-hydra
 
 :after hydra
 :ensure t
 :config
    (defun with-faicon (icon str &optional height v-adjust)
      (s-concat (all-the-icons-faicon icon :v-adjust (or v-adjust 0) :height (or height 1)) " " str))

    (defun with-fileicon (icon str &optional height v-adjust)
      (s-concat (all-the-icons-fileicon icon :v-adjust (or v-adjust 0) :height (or height 1)) " " str))

    (defun with-octicon (icon str &optional height v-adjust)
      (s-concat (all-the-icons-octicon icon :v-adjust (or v-adjust 0) :height (or height 1)) " " str))

    (defun with-material (icon str &optional height v-adjust)
      (s-concat (all-the-icons-material icon :v-adjust (or v-adjust 0) :height (or height 1)) " " str))

    (defun with-mode-icon (mode str &optional height nospace face)
      (let* ((v-adjust (if (eq major-mode 'emacs-lisp-mode) 0.0 0.05))
             (args     `(:height ,(or height 1) :v-adjust ,v-adjust))
             (_         (when face
                          (lax-plist-put args :face face)))
             (icon     (apply #'all-the-icons-icon-for-mode mode args))
             (icon     (if (symbolp icn)
                           (apply #'all-the-icons-octicon "file-text" args)
                         icon)))
        (s-concat icon (if nospace "" " ") str)))
 )

(defun dap-ui-open ()
 (interactive)
 (dap-ui-locals)
 (dap-ui-breakpoints)
 (dap-ui-sessions)
 (dap-ui-expressions)
 )

;; 定义下级菜单
(pretty-hydra-define  pwzy/hydra-debug-menu
  (:hint nil :color amaranth :quit-key "q" :title (with-faicon "toggle-on" "Toggle" 1 -0.05))
  ("Debug"
   (("d" dap-debug "dap-debug" :toggle t)
    ("h" dap-ui-open "dap-ui-open" :toggle t)
    ("r" dap-ui-repl "dap-ui-repl" :toggle t)
    )
   "Coding"
   (("t" electric-operator-mode "electric operator" :toggle t)
    ("v" flyspell-mode "flyspell" :toggle t)
    ("a" flycheck-mode "flycheck" :toggle t))))

;; 定义下级菜单
(pretty-hydra-define  pwzy/hydra-tool-menu
  (:hint nil :color amaranth :quit-key "q" :title (with-faicon "toggle-on" "Toggle" 1 -0.05))
  ("Counsel"
   (("a" counsel-ag "counsel-ag" :toggle t)
    ("l" counsel-load-theme "counsel-load-theme" :toggle t)
    ("b" ibuffer "counsel-ibuffer" :toggle t)
    ("f" counsel-fzf "counsel-fzf" :toggle t)
    ("i" imenu-list-smart-toggle "imenu-list-smart-toggle" :toggle t)
    )
   "Avy"
   (("w" avy-goto-word-0 "avy-goto-word-0" :toggle t)
    ; ("v" flyspell-mode "flyspell" :toggle t)
    ; ("c" flycheck-mode "flycheck" :toggle t)
    )
   "File"
   (("e" treemacs-select-window "treemacs-select-window" :toggle t)
    ; ("H" treemacs-root-up "treemacs-root-up" :toggle t)
    ; ("L" treemacs-root-down "treemacs-root-down" :toggle t)
    ; ("c" flycheck-mode "flycheck" :toggle t)
    )

   "Terminal"
   (
    ("v" evil-mode "evil-mode" :toggle t)
    ("t" vterm "vterm" :toggle t)
    ("o" ace-window "ace-window" :toggle t)
    ; ("v" flyspell-mode "flyspell" :toggle t)
    ; ("c" flycheck-mode "flycheck" :toggle t)
    )))

(defhydra pwzy/hydra-tab-menu (:hint nil)
  "
 ^^^^Fast Move             ^^^^Tab                    ^^Search            ^^Misc
-^^^^--------------------+-^^^^---------------------+-^^----------------+-^^---------------------------
   ^_k_^   prev group    | _C-a_^^     select first | _b_ search buffer | _C-k_   kill buffer
 _h_   _l_  switch tab   | _C-e_^^     select last  | _g_ search group  | _C-S-k_ kill others in group
   ^_j_^   next group    | _C-j_^^     ace jump     | ^^                | ^^
 ^^0 ~ 9^^ select window | _C-h_/_C-l_ move current | ^^                | ^^
-^^^^--------------------+-^^^^---------------------+-^^----------------+-^^---------------------------
"
  ("h" awesome-tab-backward-tab)
  ("j" awesome-tab-forward-group)
  ("k" awesome-tab-backward-group)
  ("l" awesome-tab-forward-tab)
  ("0" my-select-window)
  ("1" my-select-window)
  ("2" my-select-window)
  ("3" my-select-window)
  ("4" my-select-window)
  ("5" my-select-window)
  ("6" my-select-window)
  ("7" my-select-window)
  ("8" my-select-window)
  ("9" my-select-window)
  ("C-a" awesome-tab-select-beg-tab)
  ("C-e" awesome-tab-select-end-tab)
  ("C-j" awesome-tab-ace-jump)
  ("C-h" awesome-tab-move-current-tab-to-left)
  ("C-l" awesome-tab-move-current-tab-to-right)
  ("b" ivy-switch-buffer)
  ("g" awesome-tab-counsel-switch-group)
  ("C-k" kill-current-buffer)
  ("C-S-k" awesome-tab-kill-other-buffers-in-current-group)
  ("q" nil "quit")
  ("ESC" nil "quit")
  )




(provide 'init-hydra)
