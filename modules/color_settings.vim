
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
let g:gruvbox_contrast_dark='hard' " medium, soft
let g:gruvbox_invert_indent_guides='1'
let g:gruvbox_invert_selection='0'
let g:gruvbox_invert_signs='0'
let g:gruvbox_hls_cursor='orange'
"let g:gruvbox_number_column='none'
let g:gruvbox_color_column='bg1'
let g:gruvbox_sign_column='bg0'
"let g:gruvbox_guisp_fallback='fg'

" nord colorscheme settings"
let g:nord_cursor_line_number_background = 0
let g:nord_uniform_status_line = 0
let g:nord_bold_vertical_split_line = 0
let g:nord_uniform_diff_background = 0
let g:nord_bold = 1
let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_underline = 1


" gruvbox-material
let g:gruvbox_material_background='hard'
let g:gruvbox_material_palette = 'material'
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_disable_italic_comment = 0
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_visual = 'grey background'
let g:gruvbox_material_menu_selection_background = 'grey'
let g:gruvbox_material_sign_column_background = 'none'
let g:gruvbox_material_current_word = 'underline'
let g:gruvbox_material_statusline_style = 'orignal'
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

" other colorschemes
let g:palenight_terminal_italics=1
let g:spacegray_underline_search = 1
let g:spacegray_italicize_comments = 1
let g:spaceray_use_italics = 1
let g:spacegray_low_contrast = 1
let ayucolor="mirage"
let g:gotham_airline_empahsised_insert = 0

colorscheme gruvbox-material
set background=dark
set go=a


"hi Operator guifg=#cc241d
"hi cOperator guifg=#cc241d
"hi pythonOperator guifg=#cc241d
"hi javascriptOperator guifg=#cc241d
"hi javascriptForOperator guifg=#cc241d
" hi Folded guifg='#d79921' guibg=#333747
" hi FoldColumn guibg=background guifg=foreground
"hi Function gui=italic guifg=#83a598
"hi Conditional gui=italic
"hi Repeat gui=italic
"hi DiffAdd guifg=#66D9EF guibg=255
"hi DiffChange guifg=#A6E22E guibg=255
"hi DiffDelete guifg=#fb4934 guibg=255
" hi CursorLineNr guibg=255 guifg=#ebdbb2 gui=NONE

" hi SpecialComment gui=bold cterm=bold
" hi String gui=italic cterm=italic
" hi Normal ctermbg=0 guibg=#000000
" hi Comment cterm=italic gui=italic
hi Visual cterm=reverse ctermbg=NONE
hi htmlItalic gui=italic cterm=italic
hi Todo gui=bold cterm=bold
" hi LineNr guibg=#1d2021 guifg=foreground
" hi StatusLine guifg=#1d2021 guibg=foreground
hi TabLine guifg=foreground guibg=242 gui=NONE
hi TabLineSel guibg=#100e23 guifg=foreground gui=NONE
hi TabLineFill guibg=255 guifg=foreground cterm=NONE gui=NONE
hi DiffAdd  guibg=255
hi DiffChange  guibg=255
hi DiffDelete  guibg=255
hi SpecialKey guifg=#ffffff guibg=#116611
" hi Type gui=italic

if exists("g:loaded_webdevicons")
	call webdevicons#refresh()
endif

syn sync fromstart
