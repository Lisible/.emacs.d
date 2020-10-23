
;;; init.el --- Initialization file for Emacs
;;; Commentary: Emacs Startup File --- initialization for Emacs
;; 

(require 'package)

(setq package-enable-at-startup nil)
;;; Code:
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(unless (package-installed-p 'humanoid-themes)
  (package-refresh-contents)
  (package-install 'humanoid-themes))

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(compilation-message-face 'default)
 '(custom-enabled-themes '(doom-one))
 '(custom-safe-themes
   '("2f1518e906a8b60fac943d02ad415f1d8b3933a5a7f75e307e6e9a26ef5bf570" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "587938eeeaefd2b2f68a0970e02985246a28c02c1c140cb0943d2b6909c47261" "711efe8b1233f2cf52f338fd7f15ce11c836d0b6240a18fffffc2cbd5bfe61b0" "8b58ef2d23b6d164988a607ee153fd2fa35ee33efc394281b1028c2797ddeebb" "8ca8fbaeaeff06ac803d7c42de1430b9765d22a439efc45b5ac572c2d9d09b16" "f2c35f8562f6a1e5b3f4c543d5ff8f24100fae1da29aeb1864bbc17758f52b70" "2679db166117d5b26b22a8f12a940f5ac415d76b004de03fcd34483505705f62" "4cf9ed30ea575fb0ca3cff6ef34b1b87192965245776afa9e9e20c17d115f3fb" "aded61687237d1dff6325edb492bde536f40b048eab7246c61d5c6643c696b7f" default))
 '(elcord-mode t nil (elcord))
 '(highlight-changes-colors '("#FD5FF0" "#AE81FF"))
 '(highlight-tail-colors
   '(("#3C3D37" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#3C3D37" . 100)))
 '(magit-diff-use-overlays nil)
 '(menu-bar-mode nil)
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
 '(org-agenda-files '("~/.emacs.d/todo.org"))
 '(package-selected-packages
   '(dashboard doom-modeline doom-themes pdf-tools ivy-posframe counsel-projectile monokai-theme counsel zenburn-theme helm-projectile helm swiper cargo avy lsp-mode magit humanoid-themes projectile neotree elcord org-bullets beacon gruvbox-theme which-key use-package))
 '(pdf-view-midnight-colors '("#DCDCCC" . "#383838"))
 '(pos-tip-background-color "#FFFACE")
 '(pos-tip-foreground-color "#272822")
 '(weechat-color-list
   '(unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 101 :width normal :foundry "ADBO" :family "Source Code Pro"))))
 '(company-preview-common ((t (:background "#23272e" :foreground "red3"))))
 '(company-tooltip-search ((t (:background "brown" :foreground "#282c34" :weight bold))))
 '(compilation-line-number ((t (:foreground "red3"))))
 '(cursor ((t (:background "red3"))))
 '(doom-modeline-bar ((t (:background "red3"))))
 '(font-lock-keyword-face ((t (:foreground "indian red"))))
 '(font-lock-negation-char-face ((t (:inherit bold :foreground "firebrick"))))
 '(font-lock-preprocessor-face ((t (:inherit bold :foreground "firebrick"))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit bold :foreground "firebrick"))))
 '(font-lock-regexp-grouping-construct ((t (:inherit bold :foreground "firebrick"))))
 '(highlight ((t (:background "red3" :foreground "white"))))
 '(ivy-current-match ((t (:extend t :background "dark red" :weight normal))))
 '(link ((t (:foreground "brown" :underline t :weight bold))))
 '(minibuffer-prompt ((t (:foreground "red3"))))
 '(mode-line-emphasis ((t (:foreground "red3"))))
 '(neo-dir-link-face ((t (:foreground "red3"))))
 '(neo-expand-btn-face ((t (:foreground "firebrick")))))

(provide 'init)

;;; init.el ends here
