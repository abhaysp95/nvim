"-------All-the-plugins-for-vim-and-nvim---------------------- <<<
call plug#begin()
" Plug 'vim-syntastic/syntastic' "error checker for languages and scripts

" syntax and error detection
Plug 'dense-analysis/ale'

" for html
Plug 'mattn/emmet-vim'

" lsp and autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release', 'tag': '*', 'do': { -> coc#util#install()}}

Plug 'tpope/vim-repeat'

Plug 'vim-python/python-syntax'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'junegunn/fzf.vim'

Plug 'machakann/vim-sandwich'

Plug 'tpope/vim-markdown'

Plug 'terryma/vim-multiple-cursors'

Plug 'gcmt/wildfire.vim'

Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'liuchengxu/vim-which-key'

" Theme / Interface
Plug 'ap/vim-buftabline'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'KeitaNakamura/neodark.vim'
Plug 'haishanh/night-owl.vim'
Plug 'whatyouhide/vim-gotham'
Plug 'yuttie/hydrangea-vim'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'AlessandroYorba/Despacio'
Plug 'cocopon/iceberg.vim'
Plug 'nightsense/snow'
Plug 'nightsense/stellarized'
Plug 'nightsense/cosmic_latte'
Plug 'ayu-theme/ayu-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'tomasiser/vim-code-dark'
Plug 'lifepillar/vim-solarized8'
Plug 'sjl/badwolf'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plug 'kaicataldo/material.vim'
Plug 'junegunn/limelight.vim'
Plug 'mkarmona/colorsbox'
Plug 'romainl/Apprentice'
Plug 'Lokaltog/vim-distinguished'
Plug 'chriskempson/base16-vim'
Plug 'w0ng/vim-hybrid'
Plug 'AlessandroYorba/Sierra'
Plug 'daylerees/colour-schemes'
Plug 'effkay/argonaut.vim'
Plug 'ajh17/Spacegray.vim'
Plug 'atelierbram/Base2Tone-vim'
Plug 'colepeters/spacemacs-theme.vim'

Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-commentary'
Plug 'kovetskiy/sxhkd-vim'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ptzz/lf.vim'

Plug 'mhinz/vim-grepper'
Plug 'sheerun/vim-polyglot'
Plug 'tommcdo/vim-lion'

" shows diff signs in vim's signcolumn
Plug 'mhinz/vim-signify'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'

" display colors
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

" Modify * to also work with visual selections
Plug 'nelstrom/vim-visual-star-search'

" learn using f/F & t/T
Plug 'unblevable/quick-scope'

" get startscreen
Plug 'mhinz/vim-startify'

Plug 'nathanaelkane/vim-indent-guides'

Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
  let g:tagbar_sort = 0

Plug 'jpalardy/vim-slime'

Plug 'justinmk/vim-dirvish'

" Plug 'gerw/vim-latex-suite'

call plug#end()
" >>> And this is done by the way

" Browsing
" Plug 'Yggdroot/indentLine', { 'on': 'IndentLinesEnable' }
"   autocmd! User indentLine doautocmd indentLine Syntax
"   let g:indentLine_color_term = 239
"   let g:indentLine_color_gui = '#616161'

" Plug 'norcalli/nvim-colorizer.lua'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'airblade/vim-rooter'
" Plug 'rbgrouleff/bclose.vim'
