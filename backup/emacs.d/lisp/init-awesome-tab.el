(use-package awesome-tab
  :ensure t
  :quelpa (awesome-tab
      :fetcher github
      :repo "manateelazycat/awesome-tab")
  :config
  (awesome-tab-mode t)
  ;; winum users can use `winum-select-window-by-number' directly.
    (defun my-select-window-by-number (win-id)
      "Use `ace-window' to select the window by using window index.
    WIN-ID : Window index."
      (let ((wnd (nth (- win-id 1) (aw-window-list))))
        (if wnd
            (aw-switch-to-window wnd)
          (message "No such window."))))

    (defun my-select-window ()
      (interactive)
      (let* ((event last-input-event)
             (key (make-vector 1 event))
             (key-desc (key-description key)))
        (my-select-window-by-number
         (string-to-number (car (nreverse (split-string key-desc "-")))))))

  )


(provide 'init-awesome-tab)
