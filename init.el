

;; load emacs 24's package system. Add MELPA repository.
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/")
   t)



;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)


(setq inhibit-startup-screen t)

;;Toggle header
(require 'cff)
(add-hook 'c++-mode-hook
          '(lambda ()
             (define-key c-mode-base-map (kbd "M-o") 'cff-find-other-file)))
(add-hook 'c-mode-hook
          '(lambda ()
             (define-key c-mode-base-map (kbd "M-o") 'cff-find-other-file)))




(global-set-key (kbd "C-x a") 'mark-whole-buffer)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(blink-cursor-blinks -1)
 '(blink-cursor-delay 0.5)
 '(custom-enabled-themes (quote (tango)))
 '(echo-keystrokes 1)
 '(ido-mode (quote both) nil (ido))
 '(make-backup-files nil)
 '(package-selected-packages (quote (cff irony)))
 '(ring-bell-function (quote ignore))
 '(standard-indent 6)
 '(tab-width 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Courier New" :foundry "outline" :slant normal :weight normal :height 120 :width normal))))
 '(custom-themed ((t (:background "blue1" :foreground "papaya whip")))))


