(use-package lsp-mode
    :ensure t
    :hook 
        ((python-mode java-mode latex-mode tex-mode) . lsp-deferred)
        (lsp-mode . lsp-enable-which-key-integration)
    :commands 
        (lsp lsp-deferred))

(use-package lsp-jedi
  :ensure t
  :config
  (with-eval-after-load "lsp-mode"
    (add-to-list 'lsp-disabled-clients 'pyls)
    (add-to-list 'lsp-enabled-clients 'jedi)))


(use-package lsp-latex
  :ensure t
  :init
  (with-eval-after-load "tex-mode"
  (add-hook 'tex-mode-hook 'lsp)
  (add-hook 'latex-mode-hook 'lsp)
  (add-to-list 'lsp-enabled-clients 'texlab)
  )
  )

;; optionally
(use-package lsp-ui :commands lsp-ui-mode)
;; if you are ivy user
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)


(provide 'init-lsp)
