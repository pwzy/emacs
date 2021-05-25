(use-package org-bullets
  :ensure t
  :init
    (add-hook 'org-mode-hook (lambda () (org-bullets-mode t)))
    )

(provide 'init-org)
