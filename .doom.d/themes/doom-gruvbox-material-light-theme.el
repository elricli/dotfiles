;;; doom-gruvbox-material-light.el --- inspired by Gruvbox material
;;; https://github.com/sainnhe/gruvbox-material/blob/master/autoload/gruvbox_material.vim
(require 'doom-themes)

(defgroup doom-gruvbox-material-light-theme nil
  "Options for `doom-gruvbox-material-light' theme"
  :group 'doom-themes)

(defcustom doom-gruvbox-material-light-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'doom-gruvbox-material-light-theme
  :type 'boolean)

(defcustom doom-gruvbox-material-light-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'doom-gruvbox-material-light-theme
  :type 'boolean)

(defcustom doom-gruvbox-material-light-comment-bg doom-gruvbox-material-light-brighter-comments
  "If non-nil, comments will have a subtle, darker background. Enhancing their
legibility."
  :group 'doom-gruvbox-material-light-theme
  :type 'boolean)

(defcustom doom-gruvbox-material-light-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line. Can be an integer to
determine the exact padding."
  :group 'doom-gruvbox-material-light-theme
  :type '(choice integer boolean))

(defcustom doom-gruvbox-material-light-background nil
  "Choice between \"soft\", \"medium\" and \"hard\" background contrast.
Defaults to \"soft\""
  :group 'doom-gruvbox-material-theme
  :type 'string)

(defcustom doom-gruvbox-material-light-palette nil
  "Choice between \"material\", \"mix\" and \"original\" color palette.
Defaults to \"material\""
  :group 'doom-gruvbox-material-theme
  :type 'string)

;; colors from
;; https://github.com/sainnhe/gruvbox-material-vscode/tree/master/src/palette
(cond
 ((equal doom-gruvbox-material-light-background "hard")
  (setq gm/bg           "#f9f5d7"       ;; bg
        gm/bg-alt       "#fbf1c7"       ;; bg2
        gm/base0        "#f3eac7"       ;; bg1
        gm/base1        "#fbf1c7"       ;; bg2
        gm/base2        "#f2e5bc"       ;; bg3
        gm/base3        "#f2e5bc"       ;; bg4
        gm/base4        "#ebdbb2"       ;; bg5
        gm/base5        "#e0cfa9"       ;; bg6
        gm/base6        "#d5c4a1"       ;; bg7
        gm/base7        "#c9b99a"       ;; bg8
        gm/base8        "#a89984"))     ;; grey0
 ((equal doom-gruvbox-material-light-background "medium")
  (setq gm/bg           "#fbf1c7"       ;; bg
        gm/bg-alt       "#f2e5bc"       ;; bg2
        gm/base0        "#f6ebc1"       ;; bg1
        gm/base1        "#f2e5bc"       ;; bg2
        gm/base2        "#eee0b7"       ;; bg3
        gm/base3        "#ebdbb2"       ;; bg4
        gm/base4        "#e0cfa9"       ;; bg5
        gm/base5        "#d5c4a1"       ;; bg6
        gm/base6        "#c9b99a"       ;; bg7
        gm/base7        "#bdae93"       ;; bg8
        gm/base8        "#a89984"))     ;; grey0
 (t
  (setq gm/bg           "#f2e5bc"       ;; bg
        gm/bg-alt       "#ebdbb2"       ;; bg2
        gm/base0        "#efe0b7"       ;; bg1
        gm/base1        "#ebdbb2"       ;; bg2
        gm/base2        "#e6d5ae"       ;; bg3
        gm/base3        "#e0cfa9"       ;; bg4
        gm/base4        "#d5c4a1"       ;; bg5
        gm/base5        "#c9b99a"       ;; bg6
        gm/base6        "#bdae93"       ;; bg7
        gm/base7        "#a89984"       ;; bg8
        gm/base8        "#a89984")))    ;; grey0

(cond
 ((equal doom-gruvbox-material-light-palette "original")
  (setq gm/fg           "#3c3836"       ;; fg
        gm/fg-alt       "#504945"       ;; fg1
        gm/red          "#9d0006"
        gm/dark-red     "#ea6962"       ;;dimRed
        gm/orange       "#af3a03"
        gm/dark-orange  "#e78a4e"       ;;dimOrange
        gm/green        "#79740e"
        gm/dark-green   "#a9b665"       ;;dimGreen
        gm/teal         "#427b58"       ;; aqua
        gm/dark-teal    "#89b482"       ;; dimAqua
        gm/yellow       "#b57614"
        gm/dark-yellow  "#d8a657"       ;; dimYellow
        gm/blue         "#076678"
        gm/dark-blue    "#7daea3"       ;; dimBlue
        gm/magenta      "#8f3f71"       ;; purple
        gm/violet       "#d3869b"       ;; dimPurple
        gm/cyan         "#427b58"       ;; aqua
        gm/dark-cyan    "#89b482"))     ;; dimAqua
 ((equal doom-gruvbox-material-light-palette "mix")
  (setq gm/fg           "#514036"       ;; fg
        gm/fg-alt       "#6f4f3c"       ;; fg1
        gm/red          "#af2528"
        gm/dark-red     "#ea6962"       ;;dimRed
        gm/orange       "#b94c07"
        gm/dark-orange  "#e78a4e"       ;;dimOrange
        gm/green        "#72761e"
        gm/dark-green   "#a9b665"       ;;dimGreen
        gm/teal         "#477a5b"       ;; aqua
        gm/dark-teal    "#89b482"       ;; dimAqua
        gm/yellow       "#b4730e"
        gm/dark-yellow  "#d8a657"       ;; dimYellow
        gm/blue         "#266b79"
        gm/dark-blue    "#7daea3"       ;; dimBlue
        gm/magenta      "#924f79"       ;; purple
        gm/violet       "#d3869b"       ;; dimPurple
        gm/cyan         "#477a5b"       ;; aqua
        gm/dark-cyan    "#89b482"))     ;; dimAqua
 (t
  (setq gm/fg           "#654735"       ;; fg
        gm/fg-alt       "#6f4f3c"       ;; fg1
        gm/red          "#c14a4a"
        gm/dark-red     "#ea6962"       ;; dimRed
        gm/orange       "#c35e0a"
        gm/dark-orange  "#e78a4e"       ;; dimOrange
        gm/green        "#6c782e"
        gm/dark-green   "#a9b665"       ;; dimGreen
        gm/teal         "#4c7a5d"       ;; aqua
        gm/dark-teal    "#89b482"       ;; dimAqua
        gm/yellow       "#b47109"
        gm/dark-yellow  "#d8a657"       ;; dimYellow
        gm/blue         "#45707a"
        gm/dark-blue    "#7daea3"       ;; dimBlue
        gm/magenta      "#945e80"       ;; purple
        gm/violet       "#d3869b"       ;; dimPurple
        gm/cyan         "#4c7a5d"       ;; aqua
        gm/dark-cyan    "#89b482")))    ;; dimAqua


(def-doom-theme doom-gruvbox-material-light
  "Gruvbox material light variant"
  ;; name       default                 256       16
  ((bg          `(,gm/bg                nil       nil            ))
   (bg-alt      `(,gm/bg-alt            nil       nil            ))
   (base0       `(,gm/base0             "black"   "black"        ))
   (base1       `(,gm/base1             "#1e1e1e" "brightblack"  ))
   (base2       `(,gm/base2             "#2e2e2e" "brightblack"  ))
   (base3       `(,gm/base3             "#262626" "brightblack"  ))
   (base4       `(,gm/base4             "#3f3f3f" "brightblack"  ))
   (base5       `(,gm/base5             "#525252" "brightblack"  ))
   (base6       `(,gm/base6             "#6b6b6b" "brightblack"  ))
   (base7       `(,gm/base7             "#979797" "brightblack"  ))
   (base8       `(,gm/base8             "#dfdfdf" "white"        ))
   (fg          `(,gm/fg                "#bfbfbf" "brightwhite"  ))
   (fg-alt      `(,gm/fg-alt            "#2d2d2d" "white"        ))

   (grey        base8)
   (red         `(,gm/red               "#ff6655" "red"          ))
   (dark-red    `(,gm/dark-red          "#ff6655" "red"          ))
   (orange      `(,gm/orange            "#dd8844" "brightred"    ))
   (dark-orange `(,gm/dark-orange       "#dd8844" "brightred"    ))
   (green       `(,gm/green             "#99bb66" "green"        ))
   (dark-green  `(,gm/dark-green        "#99bb66" "green"        ))
   (teal        `(,gm/teal              "#44b9b1" "brightgreen"  ))
   (dark-teal   `(,gm/dark-teal         "#44b9b1" "brightgreen"  ))
   (yellow      `(,gm/yellow            "#ECBE7B" "yellow"       ))
   (dark-yellow `(,gm/dark-yellow       "#ECBE7B" "yellow"       ))
   (blue        `(,gm/blue              "#51afef" "brightblue"   ))
   (dark-blue   `(,gm/dark-blue         "#2257A0" "blue"         ))
   (magenta     `(,gm/magenta           "#c678dd" "brightmagenta"))
   (violet      `(,gm/violet            "#a9a1e1" "magenta"      ))
   (cyan        `(,gm/cyan              "#46D9FF" "brightcyan"   ))
   (dark-cyan   `(,gm/dark-cyan         "#5699AF" "cyan"         ))

   ;; face categories -- required for all themes
   (highlight       blue)
   (vertical-bar   (doom-darken base1 0.1))
   ;; (selection      dark-blue)
   (selection      grey)
   (builtin        magenta)
   (comments       (if doom-gruvbox-material-light-brighter-comments dark-cyan base8))
   (doc-comments   (doom-darken (if doom-gruvbox-material-light-brighter-comments green green) 0.15))
   (constants      violet)
   (functions      cyan)
   (keywords       red)
   (methods        cyan)
   (operators      blue)
   (type           orange)
   (strings        green)
   (variables      blue)
   (numbers        magenta)
   (region         `(,(doom-darken (car bg-alt) 0.15) ,@(doom-darken (cdr base1) 0.35)))
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    orange)
   (vc-added       green)
   (vc-deleted     red)

   ;; custom categories
   (hidden     `(,(car bg) "black" "black"))
   (-modeline-bright doom-gruvbox-material-light-brighter-modeline)
   (-modeline-pad
    (when doom-gruvbox-material-light-padded-modeline
      (if (integerp doom-gruvbox-material-light-padded-modeline) doom-gruvbox-material-light-padded-modeline 4)))

   (modeline-fg     fg)
   (modeline-fg-alt fg-alt)

   (modeline-bg
    (if -modeline-bright
        (doom-darken blue 0.475)
      `(,(doom-darken (car bg-alt) 0.15) ,@(cdr base0))))
   (modeline-bg-l
    (if -modeline-bright
        (doom-darken blue 0.45)
      `(,(doom-darken (car bg-alt) 0.1) ,@(cdr base0))))
   (modeline-bg-inactive   `(,(doom-darken (car bg-alt) 0.1) ,@(cdr bg-alt)))
   (modeline-bg-inactive-l `(,(car bg-alt) ,@(cdr base1))))


  ;; --- extra faces ------------------------
((elscreen-tab-other-screen-face :background "#353a42" :foreground "#1e2022")
   (evil-goggles-default-face :inherit 'region :background (doom-blend region bg 0.5))

   ((line-number &override) :foreground (doom-darken fg-alt 0.4))
   ((line-number-current-line &override) :foreground fg)

   (font-lock-comment-face
    :foreground comments
    :background (if doom-gruvbox-material-light-comment-bg (doom-lighten bg 0.05)))
   (font-lock-doc-face
    :inherit 'font-lock-comment-face
    :foreground doc-comments)

   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis
    :foreground (if -modeline-bright base8 highlight))

   (solaire-mode-line-face
    :inherit 'mode-line
    :background modeline-bg-l
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-l)))
   (solaire-mode-line-inactive-face
    :inherit 'mode-line-inactive
    :background modeline-bg-inactive-l
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive-l)))

   ;; Doom modeline
   (doom-modeline-bar :background (if -modeline-bright modeline-bg highlight))
   (doom-modeline-buffer-file :inherit 'mode-line-buffer-id :weight 'bold)
   (doom-modeline-buffer-path :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-project-root :foreground blue :weight 'bold)

   ;; ivy-mode
   (ivy-current-match :background blue :distant-foreground base0 :weight 'bold)

   ;; --- major-mode faces -------------------
   ;; css-mode / scss-mode
   (css-proprietary-property :foreground orange)
   (css-property             :foreground green)
   (css-selector             :foreground blue)

   ;; LaTeX-mode
   (font-latex-math-face :foreground dark-green)
   (font-latex-script-char-face :foreground dark-blue)

   ;; markdown-mode
   (markdown-markup-face :foreground base5)
   (markdown-header-face :inherit 'bold :foreground red)
   ((markdown-code-face &override) :background (doom-darken base3 0.05))

   ;; org-mode
   (org-hide :foreground hidden)
   (solaire-org-hide-face :foreground hidden)
   (org-document-info :foreground blue)
   (org-document-info-keyword :foreground dark-blue)
   (org-document-title :foreground blue)
   (org-block-begin-line :foreground dark-cyan
                         :background bg-alt)
   (org-block-end-line :foreground dark-cyan
                         :background bg-alt)
   (org-block :foreground fg :background bg-alt)
   (org-meta-line :foreground dark-cyan)
   (org-drawer :foreground dark-yellow)
   (org-level-1 :foreground magenta :weight 'semi-bold)
   (org-level-2 :foreground cyan :weight 'semi-bold)
   (org-level-3 :foreground green :weight 'semi-bold)
   (org-level-4 :foreground yellow :weight 'semi-bold)
   (org-level-5 :foreground violet :weight 'semi-bold)
   (org-level-6 :foreground dark-cyan :weight 'semi-bold)
   (org-level-7 :foreground dark-green :weight 'semi-bold)
   (org-level-8 :foreground dark-yellow :weight 'semi-bold)

   ;; magit
   (magit-section-heading :foreground blue :weight 'bold)

   ;; ivy
   (ivy-current-match :foreground blue :background bg)
   (ivy-minibuffer-match-face-2 :foreground blue :background bg)

   ;; rainbow
   (rainbow-delimiters-depth-1-face :foreground dark-orange)
   (rainbow-delimiters-depth-2-face :foreground violet)
   (rainbow-delimiters-depth-3-face :foreground dark-cyan)
   (rainbow-delimiters-depth-4-face :foreground dark-yellow)
   (rainbow-delimiters-unmatched-face: :foreground fg :background 'nil)
   (show-paren-match :foreground bg :background dark-red)

   ;; evil
   (evil-ex-lazy-highlight :foreground fg :background violet)
   (evil-snipe-first-match-face :foreground bg :background orange)

   ;; others
   (isearch :foreground fg :background violet)

   ;; other faces and indicators
   (fill-column-indicator :foreground bg-alt :background bg-alt)
   (selection :foreground bg-alt :background dark-orange)
   (company-tooltip-common-selection :foreground bg-alt :background dark-blue)

   )


  ;; --- extra variables ---------------------
  ()
  )

;;; doom-gruvbox-material-light-theme.el ends here
