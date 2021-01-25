" Set Proper Tabs
if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif

" Colorcolumn settings
"highlight ColorColumn ctermbg=red
" although this is working, color isn't changing to red, it's still grey
"call matchadd('ColorColumn', '\%101v', 100)


" spell error
hi SpellBad cterm=underline ctermfg=9
hi SpellLocal cterm=underline ctermfg=9
hi SpellRare cterm=underline ctermfg=9
hi SpellCap cterm=underline


if (has('nvim'))
	let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif
" source "$HOME/.config/nvim/plugged/gruvbox/gruvbox_256palette.sh"
let base16colorspace=256
set background=dark

" luochen1990/rainbow "
let g:rainbow_active = 0

" source this to your profile

" gruvbox settings
let g:gruvbox_bold='1'
let g:gruvbox_italic='1'
let g:gruvbox_undercurl='1'
let g:gruvbox_termcolors='256'
let g:gruvbox_underline='1'
let g:gruvbox_italicize_comments='1'
let g:gruvbox_italicize_strings='1'
let g:gruvbox_improved_strings='0'
let g:gruvbox_improved_warnings='1'
"let g:gruvbox_contrast_light='hard'
let g:gruvbox_contrast_dark='medium' " hard, medium, soft
let g:gruvbox_invert_indent_guides='1'
let g:gruvbox_invert_selection='0'
let g:gruvbox_invert_signs='0'
let g:gruvbox_hls_cursor='orange'
"let g:gruvbox_number_column='none'
let g:gruvbox_color_column='bg1'
let g:gruvbox_sign_column='bg0'
"let g:gruvbox_guisp_fallback='fg'

" few other options for gruvbox8
let g:gruvbox_filetype_hi_groups=1
let g:gruvbox_plugin_hi_groups=1

" nord colorscheme settings"
let g:nord_cursor_line_number_background = 0
let g:nord_uniform_status_line = 0
let g:nord_bold_vertical_split_line = 0
let g:nord_uniform_diff_background = 0
let g:nord_bold = 1
let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_underline = 1
" from my fork
let g:nord_background = "dark"


" gruvbox-material
let g:gruvbox_material_background='hard'
let g:gruvbox_material_palette = 'material'
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_disable_italic_comment = 0
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_visual = 'green background'
let g:gruvbox_material_menu_selection_background = 'green'
let g:gruvbox_material_sign_column_background = 'none'
let g:gruvbox_material_current_word = 'underline'
let g:gruvbox_material_statusline_style = 'original'
let g:gruvbox_material_better_performance = 1


" material colorscheme
let g:material_terminal_italics = 1
let g:material_theme_style = 'darker'


" onedark colorscheme
let g:onedark_hide_endofbuffer = 1
let g:onedark_terminal_italics = 1

" vim-one
let g:one_allow_italics = 1

" vim-monokai-tasty
let g:vim_monokai_tasty_italic = 1

" deep-space
let g:deepspace_italics = 1

" neodark colorscheme
" let g:neodark#backgroud = '#202020'
let g:neodark#use_256color = 1

" drewtempelmeyer/palenight
let g:palenight_terminal_italics=1

" spacegray
let g:spacegray_underline_search = 1
let g:spacegray_italicize_comments = 1
let g:spaceray_use_italics = 1
let g:spacegray_low_contrast = 1

" gotham-256
let g:gotham_airline_empahsised_insert = 0

" ayu-theme/ayu-vim "
let ayucolor="mirage"

" sonokai
let g:sonokai_style = 'shusia'

" edge
let g:edge_style = 'neon' " default, aura, neon
let g:edge_enable_italic = 1
let g:edge_disable_italic_comment = 0
let g:edge_cursor = 'green'
let g:edge_transparent_background = 0
let g:edge_menu_selection_background = 'green'
let g:edge_diagnostic_line_highlight = 0
let g:edge_current_word = 'grey background'
let g:edge_better_performance = 1

" tokyo-night colorscheme
let g:tokyonight_style = 'night'  " night, storm
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background = 0
let g:tokyonight_menu_selection_background = 'blue'  " green, red, blue
let g:tokyonight_disable_italic_comment = 0
let g:tokyonight_cursor = 'auto'  " auto, red, green, blue
let g:tokyonight_current_word = 'grey background'  " bold, italic, underline, 'grey background'

" xcodedarkhc
let g:xcodedarkhc_green_comments = 1
let g:xcodedarkhc_emph_types = 1
let g:xcodedarkhc_emph_funcs = 1
let g:xcodedarkhc_emph_indents = 1
let g:xcodedarkhc_match_paren_style = 0
let g:xcodedarkhc_dim_punctuation = 1

" Alessandro/Sierra
let g:sierra_Midnight = 1

" Alessandro/Alduin
let g:alduin_Shout_Dragon_Aspect = 0
let g:alduin_Shout_Become_Ethereal = 0
let g:alduin_Shout_Fire_Breath = 1
let g:alduin_Shout_Aura_Whisper = 0

"  Rigellute/shades-of-purple.vim  "
let g:shades_of_purple_bold = 1
let g:shades_of_purple_italic = 1

" jacoborus/tender.vim "
let g:tender_italics = 1
let g:tender_bold = 1

" NLKNguyen/PaperColor "
let g:PaperColor_allow_bold = 1
let g:PaperColor_allow_italic = 1

" cormacrelf/vim-colors-github "
let g:github_colors_soft = 1
let g:github_colors_extra_functions = 1
let g:github_colors_block_diffmark = 1

" chuling/equinusocio_material "
let g:equinusocio_material_style = 'darker'
let g:equinusocio_material_less = 50
let g:equinusocio_material_hide_vertsplit = 1
let g:equinusocio_material_bracket_improved = 0

" dracula/vim "
let g:dracula_bold = 1
let g:dracula_italic = 1
let g:dracula_underline = 1
let g:dracula_undercurl = 1
let g:dracula_inverse = 0


colorscheme edge

hi Visual cterm=reverse ctermbg=NONE
hi Comment cterm=italic gui=italic
hi htmlItalic gui=italic cterm=italic
hi Todo gui=bold cterm=bold
hi TabLine guifg=foreground guibg=242 gui=NONE
hi TabLineSel guibg=#100e23 guifg=foreground gui=NONE
hi TabLineFill guibg=255 guifg=foreground cterm=NONE gui=NONE
hi LineNr guibg=background
hi DiffAdd  guibg=background
hi DiffChange  guibg=background
hi DiffDelete  guibg=background
hi SignifySignAdd guibg=background
hi SignifySignChange guibg=background
hi SignifySignDelete guibg=background
" hi SpecialKey guifg=#ffffff guibg=#116611
" hi NonText guifg=#0d931b
hi StatusLine guibg=background guifg=foreground
hi StatusLineNC guibg=background guifg=#928374
hi SignColumn guibg=background guifg=#2d3640
hi FoldColumn guibg=background guifg=foreground
hi StatusLine guibg=background gui=NONE
hi VertSplit guifg=foreground guibg=background
hi Cursor guibg=foreground guifg=background
" hi Comment gui=NONE

" palenight's background
" hi Normal guibg=#0d162c
" hi Normal guibg=#070f22

" ayu-dark
" hi Normal guibg=#0a0e14

" off
" hi Normal guibg=#080808

" gruvbox-dark-custom
" hi Normal guibg=#10151a

" onedark/nord
" hi Normal guibg=#2c303c
" hi Normal guibg=#21242f
" hi Normal guibg=#24242E
" hi Normal guibg=#1e2430

" hi Normal guibg=#050505

" dracula
" hi Normal guifg=#bbc5ff

if exists("g:loaded_webdevicons")
	call webdevicons#refresh()
endif

syn sync fromstart
set go=a
