

;; Some stuff emacs generated.
;; <emacs-generated>
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-directory-alist (quote (("." . "/home/kove/.emacs.d/backup"))))
 '(cursor-type (quote (bar . 1)))
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(inhibit-startup-screen t)
 '(line-spacing 3)
 '(package-selected-packages
   (quote
    (fish-mode haskell-mode php-mode powershell multiple-cursors))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-face ((t (:foreground "Firebrick" :slant italic))))
 '(haskell-literate-comment-face ((t (:inherit font-lock-doc-face :slant italic))))
 '(haskell-type-face ((t (:inherit font-lock-type-face :slant italic)))))

;; For use of 'melpa'.
;; <https://melpa.org/#/getting-started>
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

;; Define alias for M-<up> and M-<down>.
;; <https://stackoverflow.com/questions/4351044/binding-m-up-m-down-in-emacs-23-1-1>
(define-key input-decode-map "\e\eOA" [(meta up)])
(define-key input-decode-map "\e\eOB" [(meta down)])

;; For use of 'multiple-cursors'.
;; <https://github.com/magnars/multiple-cursors.el>
(require 'multiple-cursors)

(global-set-key [(meta down)] 'mc/mark-next-like-this)     ;; Add cursor to next occurence of region or,
                                                           ;; if region is empty, add cursor to next line.
(global-set-key [(meta up)]   'mc/mark-previous-like-this) ;; Add cursor to previous occurence of region or,
                                                           ;; if region is empty, add cursor to previous line.
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)    ;; Add cursor to each occurence of region.

;; Overwrite region.
;; <https://www.gnu.org/software/emacs/manual/html_node/efaq/Replacing-highlighted-text.html>
(delete-selection-mode 1)

;; Disable menu-bar, tool-bar and scroll-bar.
;; <http://kb.mit.edu/confluence/display/istcontrib/Disabling+the+Emacs+menubar%2C+toolbar%2C+or+scrollbar>
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Enable converting the region to upper-case.
;; <emacs-generated>
(put 'upcase-region 'disabled nil)

;; Set theme to 'spacemacs-dark'.
;; <original>
(load-theme 'spacemacs-dark)

;; Enable auto auto completion of character denotion pairs.
;; <original>
(electric-pair-mode 't)
