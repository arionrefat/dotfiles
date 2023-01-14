;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq doom-font (font-spec :family "Fira Code Retina" :size 20)
      doom-variable-pitch-font (font-spec :family "VictorMono Nerd Font" :size 19)
      doom-big-font (font-spec :family "JetBrains Mono" :size 24))

; Theme
(setq doom-theme 'doom-vibrant)

(setq fancy-splash-image "~/.doom.d/emacs.png")

(setq org-directory "~/Workspaces/Org-mode")

(setq display-line-numbers-type t)

(setq confirm-kill-emacs nil)

;; For wakatime
(global-wakatime-mode)
(global-tree-sitter-mode)

(setq which-key-idle-delay 0.5)

(setq elfeed-feeds '(
                     "https://news.ycombinator.com/rss"
                     "https://lukesmith.xyz/rss.xml"
                     "https://notrelated.libsyn.com/rss"
                     "https://this-week-in-neovim.org/rss"
                     "https://dev.to/feed/"
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
