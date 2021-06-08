;; 切换透明
;;;###autoload
; (defun pwzy/toggle-transparency ()
;   (interactive)
;   (let ((alpha (frame-parameter nil 'alpha)))
;     (set-frame-parameter
;      nil 'alpha
;      (if (eql (cond ((numberp alpha) alpha)
;                     ((numberp (cdr alpha)) (cdr alpha))
;                     ;; Also handle undocumented (<active> <inactive>) form.
;                     ((numberp (cadr alpha)) (cadr alpha)))
;               100)
;          '(90 . 90) '(100 . 100)))))

; (pwzy/toggle-transparency)
; (pwzy/toggle-transparency)

(provide 'init-autoload)

