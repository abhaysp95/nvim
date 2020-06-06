"-------All-the-plugins-for-vim-and-nvim----------------------
call plug#begin()
" syntax and error detection
Plug 'dense-analysis/ale'

" for html
Plug 'mattn/emmet-vim'

" for php and html
Plug '2072/PHP-Indenting-for-VIm'

" lsp and autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release', 'tag': '*', 'do': { -> coc#util#install()}}

Plug 'tpope/vim-repeat'

Plug 'vim-python/python-syntax'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'junegunn/fzf.vim'

Plug 'ctrlpvim/ctrlp.vim'

" surround
Plug 'tpope/vim-surround'
" Plug 'machakann/vim-sandwich'

Plug 'tpope/vim-markdown'

Plug 'terryma/vim-multiple-cursors'

Plug 'gcmt/wildfire.vim'

Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'liuchengxu/vim-which-key'

" Theme / Interface
Plug 'ryanoasis/vim-devicons'
Plug 'bagrat/vim-buffet'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'haishanh/night-owl.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'tomasr/molokai'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'gruvbox-community/gruvbox'
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'w0ng/vim-hybrid'

Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'

" code commenter
Plug 'scrooloose/nerdcommenter'
" Plug 'scrooloose/nerdtree'
" Plug 'tpope/vim-commentary'

Plug 'kovetskiy/sxhkd-vim'
" Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ptzz/lf.vim'

Plug 'mhinz/vim-grepper'
Plug 'sheerun/vim-polyglot'
" Plug 'pangloss/vim-javascript'
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

" Plug 'nathanaelkane/vim-indent-guides'

Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
  let g:tagbar_sort = 0

" live results
Plug 'jpalardy/vim-slime'
Plug 'metakirby5/codi.vim'

Plug 'justinmk/vim-dirvish'


call plug#end()
