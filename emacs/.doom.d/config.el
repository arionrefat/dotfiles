;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq doom-font (font-spec :family "VictorMono Nerd Font" :size 20)
      doom-variable-pitch-font (font-spec :family "CaskaydiaCove Nerd Font" :size 19)
      doom-big-font (font-spec :family "Fira Code Retina" :size 22))

(setq doom-theme 'doom-one)
(setq fancy-splash-image "~/.doom.d/emacs.png")

(after! doom-themes
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t))

(custom-set-faces!
  '(font-lock-comment-face :slant italic)
  '(font-lock-keyword-face :slant italic))

(setq org-directory "~/Workspaces/Org-mode")

(setq display-line-numbers-type t)

;; ;; for company mode
;; (require 'company)
;; (setq company-idle-delay 0.1
;;       company-minimum-prefix-length 2)

(setq confirm-kill-emacs nil)

;; For wakatime
(global-wakatime-mode)
(global-tree-sitter-mode)

(setq which-key-idle-delay 0.5)

(setq elfeed-feeds '(
                     "https://www.reddit.com/r/archlinux.rss"
                     "https://www.reddit.com/r/linux.rss"
                     "https://www.reddit.com/r/commandline.rss"
                     "https://www.reddit.com/r/DoomEmacs.rss"
                     "https://www.reddit.com/r/emacs.rss"
                     "https://www.reddit.com/r/vim.rss"
                     "https://www.reddit.com/r/awesomewm.rss"
                     "https://www.youtube.com/feeds/videos.xml?channel_id=UC2eYFnH61tmytImy1mTYvhA"
                     "https://www.youtube.com/feeds/videos.xml?channel_id=UCAiiOTio8Yu69c3XnR7nQBQ"
                     "https://www.youtube.com/feeds/videos.xml?channel_id=UCHnyfMqiRRG1u-2MsSQLbXA"
                     "https://www.youtube.com/feeds/videos.xml?channel_id=UC8ENHE5xdFSwx71u3fDH5Xw"
                     "https://news.ycombinator.com/rss"
                     "https://lukesmith.xyz/rss.xml"
                     "https://notrelated.libsyn.com/rss"
                     "https://stallman.org/rss/rss.xml"))

;; if you omit =:host=, ~SERVER~ will be used instead.
(after! circe
  (set-irc-server! "irc.libera.chat"
    `(:tls t
      :port 6697
      :nick "arion6969"
      :sasl-username "arion69"
      :sasl-password "refatcse000!"
      :channels ("#emacs", "#linux", "#archlinux", "#systemcrafters", "#neovim"))))

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
