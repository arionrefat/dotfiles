;; Quiet Startup
(setq initial-major-mode 'fundamental-mode)
(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)
(setq frame-inhibit-implied-resize t)
(defun display-startup-echo-area-message ()
  (message "Welcome Back Refat!"))

;; Helps you to spam ESC key
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Set default font
(set-face-attribute 'default nil :font "JetBrainsMono Nerd Font Mono" :height 150)
;; Set the fixed pitch face
(set-face-attribute 'fixed-pitch nil :font "Fira Code Retina" :height 140)
;; Set the variable pitch face
(set-face-attribute 'variable-pitch nil :font "JetBrainsMono Nerd Font" :height 140 :weight 'regular)

;;Disable stuffs
(scroll-bar-mode -1)        ; Disable the scroll bar
(tool-bar-mode -1)          ; Disable the toolbar
;;(menu-bar-mode -1)          ; Disable the menu bar

;;shows line, column numbers, highlight current line and auto pairs parenthesis
(column-number-mode)
(global-hl-line-mode 1)
(electric-pair-mode)
(global-display-line-numbers-mode t)
(setq-default indent-tabs-mode nil
              tab-width 4)

;;Ignore useless warnings
(setq ad-redefinition-action 'accept)

;;Fix mouse scroll
(setq mouse-wheel-scroll-amount '(0.07))
(setq mouse-wheel-progressive-speed nil)

;; Disable line numbers for some modes
(dolist (mode '(org-mode-hook
                term-mode-hook
                shell-mode-hook
				dashboard-mode-hook
                eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))
