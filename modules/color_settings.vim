
" Set Proper Tabs
if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif

" Colorcolumn settings <<<
"highlight ColorColumn ctermbg=red
" although this is working, color isn't changing to red, it's still grey
"call matchadd('ColorColumn', '\%101v', 100)
" >>>

" spell error <<<
highlight SpecialKey guifg=#ffffff guibg=#116611
hi SpellBad cterm=underline ctermfg=9
hi SpellLocal cterm=underline ctermfg=9
hi SpellRare cterm=underline ctermfg=9
hi SpellCap cterm=underline
" >>>

if (has('nvim'))
	let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif
" source "$HOME/.config/nvim/plugged/gruvbox/gruvbox_256palette.sh"
let base16colorspace=256
set background=dark
" source this to your profile

" gruvbox settings <<<
let g:gruvbox_bold='1'
let g:gruvbox_italic='1'
let g:gruvbox_undercurl='1'
let g:gruvbox_termcolors='256'
let g:gruvbox_underline='1'
let g:gruvbox_italicize_comments='1'
let g:gruvbox_italicize_strings='1'
let g:gruvbox_improved_strings='0'
let g:gruvbox_improved_warnings='1'
let g:gruvbox_contrast_light='hard'
let g:gruvbox_contrast_dark='dafault' " hard, soft
let g:gruvbox_invert_indent_guides='1'
let g:gruvbox_invert_selection='0'
let g:gruvbox_sign_column='dark1'
let g:gruvbox_invert_signs='0'
" >>>

" nord colorscheme settings" <<<
let g:nord_cursor_line_number_background = 0
let g:nord_uniform_status_line = 0
let g:nord_bold_vertical_split_line = 0
let g:nord_uniform_diff_background = 0
let g:nord_bold = 1
let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_underline = 1
" >>>

" material colorscheme <<<
let g:material_terminal_italics = 1
let g:material_theme_style = 'default'
" >>>

" onedark colorscheme
let g:onedark_hide_endofbuffer = 1
let g:onedark_terminal_italics = 1

" vim-one
let g:one_allow_italics = 1

" deep-space
let g:deepspace_italics = 1

" neodark colorscheme
" let g:neodark#backgroud = '#202020'
let g:neodark#use_256color = 1

" other colorschemes <<<
let g:palenight_terminal_italics=1
let g:spacegray_underline_search = 1
let g:spacegray_italicize_comments = 1
let ayucolor="dark"
let g:gotham_airline_empahsised_insert = 0
" >>>
"
colorscheme gruvbox
set background=dark
set go=a

" enable when onedark is set to colorscheme <<<
" if (has("autocmd"))
" 	augroup colorextend
" 		autocmd!
"Make 'function's bold in GUI mode"
" 		autocmd ColorScheme * call onedark#extend_highlight("Function", { "gui": "bold", "cterm": "bold" })
" 	augroup END
" endif
" >>>


" highlight settings <<<
" hi Identifiers gui=bold,italic cterm=bold,italic
" hi Constant gui=bold,italic cterm=bold,italic
" hi Statement gui=bold,italic cterm=bold,italic
" hi htmlArg cterm=bold,italic gui=bold,italic
" hi Type gui=bold,italic cterm=bold,italic
" hi Structure gui=bold,italic cterm=bold,italic
" hi Typedef gui=bold,italic cterm=bold,italic
" hi Keyword gui=bold,italic cterm=bold,italic
" hi Label gui=bold,italic cterm=bold,italic
" hi Character gui=bold,italic cterm=bold,italic
"
" hi Function gui=bold cterm=bold
" hi PreProc gui=bold cterm=bold
" hi Special gui=bold cterm=bold
" " hi Conditional gui=bold,italic cterm=bold,italic
" " hi Repeat gui=bold,italic cterm=bold,italic
"
" hi Underlined gui=underline cterm=underline
"
"hi SignColumn ctermbg=255 guibg=255 gui=bold
hi CursorLine guibg='#3c3836'
hi SpecialComment gui=bold cterm=bold
hi String gui=italic cterm=italic
hi Comment cterm=italic gui=italic
hi Visual cterm=reverse ctermbg=NONE
hi htmlItalic gui=italic cterm=italic
"
hi Operator guifg=#d65d0e
hi CursorLineNr guibg='#3c3836' guifg=#458588 gui=bold
hi LineNr guibg='#3c3836'
hi StatusLine guifg=background guibg='#458588' gui=bold
hi TabLine guifg=foreground guibg=255
hi TabLineSel guibg='#458588' guifg=background gui=bold
hi TabLineFill guibg=foreground guifg=background
hi BufTabLineFill guibg=255 guifg=#da12ff
hi BufTabLineActive guibg=255 guifg=foreground gui=bold
hi BufTabLineHidden guibg=255 guifg=#a5a5a5
hi BufTabLineCurrent guibg=#458588 guifg=background gui=bold
hi Folded guifg='#458588'
hi FoldColumn guibg=background guifg=foreground

"autocmd VimEnter,ColorScheme * :hi IndentGuidesOdd guibg=#504945
"autocmd VimEnter,ColorScheme * :hi IndentGuidesEven guibg=#7c6f64

" highlight yanked text(currently not included till version 0.4.3)
"au TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", 500)
"if !exists('##TextYankPost')
	"map y <Plug>(highlightedyank)
"endif
"let g:highlightedyank_highlight_duration = 1000
"hi HighlightedyankRegion cterm=reverse gui=reverse

" these changes colors to white for syntax <<<
" hi Boolean gui=bold cterm=bold
" hi SpecialChar gui=bold cterm=bold
" highlight Delimiter gui=bold cterm=bold
" highlight Todo gui=bold cterm=bold
" hi! Visual guibg='#928374'
" hi CursorColumn guibg='#444267'
" make nvim transparent with terminal
" hi! Normal ctermbg=NONE guibg=NONE
" hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
" >>>

" Dim inactive windows using 'colorcolumn' setting <<<
" This tends to slow down redrawing, but is very useful.
" Based on https://groups.google.com/d/msg/vim_use/IJU-Vk-QLJE/xz4hjPjCRBUJ
" XXX: this will only work with lines containing text (i.e. not '~')
" from
" if exists('+colorcolumn')
"   function! s:DimInactiveWindows()
"     for i in range(1, tabpagewinnr(tabpagenr(), '$'))
"       let l:range = ""
"       if i != winnr()
"         if &wrap
         " HACK: when wrapping lines is enabled, we use the maximum number
         " of columns getting highlighted. This might get calculated by
         " looking for the longest visible line and using a multiple of
         " winwidth().
         " let l:width=256 " max
        " else
         " let l:width=winwidth(i)
        " endif
        " let l:range = join(range(1, l:width), ',')
      " endif
      " call setwinvar(i, '&colorcolumn', l:range)
    " endfor
  " endfunction
  " augroup DimInactiveWindows
    " au!
    " au WinEnter * call s:DimInactiveWindows()
  " augroup END
" endif
" >>>
"
syn sync fromstart
" >>>
