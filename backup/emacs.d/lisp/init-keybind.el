
(use-package evil
  :ensure t
  :config
  (evil-mode t)
  )

(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode 1))

(use-package evil-matchit
  :ensure t
  :config
  (global-evil-matchit-mode 1))


(use-package evil-nerd-commenter
  :ensure t
  ; :config
  ; (global-evil-matchit-mode 1)
  )

(use-package evil-goggles
  :ensure t
  :config
  (evil-goggles-mode)

  ;; optionally use diff-mode's faces; as a result, deleted text
  ;; will be highlighed with `diff-removed` face which is typically
  ;; some red color (as defined by the color theme)
  ;; other faces such as `diff-added` will be used for other actions
  (evil-goggles-use-diff-faces))


(use-package evil-easymotion
  :ensure t)

(use-package evil-leader
  :ensure t)

;; A set of keybindings for evil-mode
; (use-package evil-collection
;   :after evil
;   :ensure t
;   :config
;   (evil-collection-init))

(use-package evil-org
  :ensure t
  :after org
  :hook (org-mode . (lambda () evil-org-mode))
  :config
  (require 'evil-org-agenda)
  (evil-org-agenda-set-keys))

(use-package evil-avy
  :ensure t)




; (defun meow-setup ()
;   (setq meow-cheatsheet-layout meow-cheatsheet-layout-qwerty)
;   (meow-motion-overwrite-define-key
;    '("j" . meow-next)
;    '("k" . meow-prev))
;   (meow-leader-define-key
;    ;; SPC j/k will run the original command in MOTION state.
;    '("j" . meow-motion-origin-command)
;    '("k" . meow-motion-origin-command)
;    ;; Use SPC (0-9) for digit arguments.
;    '("1" . meow-digit-argument)
;    '("2" . meow-digit-argument)
;    '("3" . meow-digit-argument)
;    '("4" . meow-digit-argument)
;    '("5" . meow-digit-argument)
;    '("6" . meow-digit-argument)
;    '("7" . meow-digit-argument)
;    '("8" . meow-digit-argument)
;    '("9" . meow-digit-argument)
;    '("0" . meow-digit-argument)
;    '("/" . meow-keypad-describe-key)
;    '("?" . meow-cheatsheet))
;   (meow-normal-define-key
;    '("0" . meow-expand-0)
;    '("9" . meow-expand-9)
;    '("8" . meow-expand-8)
;    '("7" . meow-expand-7)
;    '("6" . meow-expand-6)
;    '("5" . meow-expand-5)
;    '("4" . meow-expand-4)
;    '("3" . meow-expand-3)
;    '("2" . meow-expand-2)
;    '("1" . meow-expand-1)
;    '("-" . negative-argument)
;    '(";" . meow-reverse)
;    '("," . meow-inner-of-thing)
;    '("." . meow-bounds-of-thing)
;    '("[" . meow-beginning-of-thing)
;    '("]" . meow-end-of-thing)
;    '("a" . meow-append)
;    '("A" . meow-open-below)
;    '("b" . meow-back-word)
;    '("B" . meow-back-symbol)
;    '("c" . meow-change)
;    '("C" . meow-change-save)
;    '("d" . meow-C-d)
;    '("D" . meow-backward-delete)
;    '("e" . meow-next-word)
;    '("E" . meow-next-symbol)
;    '("f" . meow-find)
;    '("F" . meow-find-expand)
;    '("g" . meow-cancel)
;    '("G" . meow-grab)
;    '("h" . meow-left)
;    '("H" . meow-left-expand)
;    '("i" . meow-insert)
;    '("I" . meow-open-above)
;    '("j" . meow-next)
;    '("J" . meow-next-expand)
;    '("k" . meow-prev)
;    '("K" . meow-prev-expand)
;    '("l" . meow-right)
;    '("L" . meow-right-expand)
;    '("m" . meow-join)
;    '("n" . meow-search)
;    '("N" . meow-pop-search)
;    '("o" . meow-block)
;    '("O" . meow-block-expand)
;    '("p" . meow-yank)
;    '("P" . meow-yank-pop)
;    '("q" . meow-quit)
;    '("Q" . meow-goto-line)
;    '("r" . meow-replace)
;    '("R" . meow-swap-grab)
;    '("s" . meow-kill)
;    '("t" . meow-till)
;    '("T" . meow-till-expand)
;    '("u" . meow-undo)
;    '("U" . meow-undo-in-selection)
;    '("v" . meow-visit)
;    '("V" . meow-kmacro-matches)
;    '("w" . meow-mark-word)
;    '("W" . meow-mark-symbol)
;    '("x" . meow-line)
;    '("X" . meow-kmacro-lines)
;    '("y" . meow-save)
;    '("Y" . meow-sync-grab)
;    '("z" . meow-pop-selection)
;    '("Z" . meow-pop-all-selection)
;    '("&" . meow-query-replace)
;    '("%" . meow-query-replace-regexp)
;    '("'" . repeat)
;    '("\\" . quoted-insert)
;    '("<escape>" . meow-last-buffer)))
;
; (use-package meow
;   :demand t
;   :init
;   (meow-global-mode 1)
;   :config
;   ;; meow-setup is your custom function, see below
;   (meow-setup)
;   ;; If you want relative line number in NORMAL state(for display-line-numbers-mode)
;   (meow-setup-line-number)
;   ;; If you need setup indicator, see `meow-indicator' for customizing by hand.
;   (meow-setup-indicator))

(provide 'init-keybind)