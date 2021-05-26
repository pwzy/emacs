(use-package org-bullets
  :ensure t
  :init
    (add-hook 'org-mode-hook (lambda () (org-bullets-mode t)))
    )

; (use-package org-reveal
;   :ensure t)
; (use-package org-super-agenda
;   :ensure t)


(provide 'init-org)
  
