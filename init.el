
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
 '(custom-enabled-themes '(humanoid-light))
 '(custom-safe-themes
   '("2679db166117d5b26b22a8f12a940f5ac415d76b004de03fcd34483505705f62" "4cf9ed30ea575fb0ca3cff6ef34b1b87192965245776afa9e9e20c17d115f3fb" "aded61687237d1dff6325edb492bde536f40b048eab7246c61d5c6643c696b7f" default))
 '(elcord-mode t nil (elcord))
 '(package-selected-packages
   '(cargo avy lsp-mode magit humanoid-themes projectile neotree elcord org-bullets beacon gruvbox-theme which-key use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#f8f8f2" :foreground "#232629" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "ADBO" :family "Source Code Pro")))))

(provide 'init)

;;; init.el ends here
