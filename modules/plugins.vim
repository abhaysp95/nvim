"-------All-the-plugins-for-vim-and-nvim----------------------
call plug#begin()
" syntax and error detection
Plug 'dense-analysis/ale'

" for html
Plug 'mattn/emmet-vim'

Plug 'tpope/vim-repeat'

" minimal autopairs
Plug 'cohama/lexima.vim'

" surround
Plug 'tpope/vim-surround'
" Plug 'machakann/vim-sandwich'

Plug 'terryma/vim-multiple-cursors'

" Plug 'gcmt/wildfire.vim'

" Plug 'liuchengxu/vim-which-key'

" Theme / Interface
Plug 'ryanoasis/vim-devicons'
Plug 'bagrat/vim-buffet'
Plug 'junegunn/rainbow_parentheses.vim'
" Plug 'rakr/vim-one'
" Plug 'joshdick/onedark.vim'
" Plug 'drewtempelmeyer/palenight.vim'
" Plug 'haishanh/night-owl.vim'
" Plug 'ayu-theme/ayu-vim'
Plug 'tomasr/molokai'
Plug 'fmoralesc/molokayo'
Plug 'sjl/badwolf'
" Plug 'sickill/vim-monokai'
" Plug 'patstockwell/vim-monokai-tasty'
Plug 'gruvbox-community/gruvbox'
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'kaicataldo/material.vim'
Plug 'w0ng/vim-hybrid'
" Plug 'chriskempson/base16-vim'
" Plug 'ajh17/Spacegray.vim'

Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'

" code commenter
Plug 'scrooloose/nerdcommenter'

Plug 'kovetskiy/sxhkd-vim'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'mhinz/vim-grepper'
Plug 'sheerun/vim-polyglot'
Plug 'tommcdo/vim-lion'

" shows diff signs in vim's signcolumn
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" display colors
Plug 'norcalli/nvim-colorizer.lua'

" Modify * to also work with visual selections
Plug 'nelstrom/vim-visual-star-search'


" get startscreen
Plug 'mhinz/vim-startify'

Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
Plug 'mbbill/undotree'

" live results
Plug 'jpalardy/vim-slime'
" Plug 'metakirby5/codi.vim'

" file navigations
Plug 'justinmk/vim-dirvish'
Plug 'scrooloose/nerdtree'

" fuzzy file navigations
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()
