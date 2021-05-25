(use-package snails
  :ensure t
  :quelpa (snails
  :fetcher github
  :repo "manateelazycat/snails")
  :load-path "~/.emacs.d/quelpa/build/snails"
  :config
  (setq snails-default-backends '(
                                  snails-backend-fd
                                  snails-backend-rg
                                  snails-backend-recentf
                                  snails-backend-directory-files
                                  snails-backend-awesome-tab-group 
                                  snails-backend-buffer
                                  snails-backend-current-buffer
                                  snails-backend-command
                                  snails-backend-bookmark
                                  snails-backend-google-suggestion
                                  )
        snails-prefix-backends '(
                                 ("\\" '(snails-backend-fd))
                                 (">" '(snails-backend-command))
                                ; ("#" '(snails-backend-current-buffer))
                                 ; ("@" '(snails-backend-imenu))
                                 ("!" '(snails-backend-rg))
                                 ("%" '(snails-backend-buffer))
                                 ; ("," '(snails-backend-google-suggestion))
                                 ; ("?" '(snails-backend-mdfind snails-backend-everything))
                                 )
        snails-default-show-prefix-tips t
        )

  (setq snails-show-with-frame nil)

  )


(use-package fuz
  :ensure t)


(provide 'init-snail) 
