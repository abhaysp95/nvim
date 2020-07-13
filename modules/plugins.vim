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

Plug 'terryma/vim-multiple-cursors'

" Theme / Interface
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'danilo-augusto/vim-afterglow'
Plug 'romainl/Apprentice'
Plug 'Badacadabra/vim-archery'
Plug 'w0ng/vim-hybrid'

Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'

" code commenter
Plug 'scrooloose/nerdcommenter'

" sxhkd syntax
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

" show tag tree
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
" show undo history in tree
Plug 'mbbill/undotree'

" live results
Plug 'jpalardy/vim-slime'

" file navigations
Plug 'justinmk/vim-dirvish'
" Plug 'scrooloose/nerdtree'

" fuzzy file navigations
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

" Plug 'machakann/vim-sandwich'
" Plug 'gcmt/wildfire.vim'
" Plug 'liuchengxu/vim-which-key'

" Plug 'ryanoasis/vim-devicons'
" Plug 'bagrat/vim-buffet'
" Plug 'rakr/vim-one'
" Plug 'joshdick/onedark.vim'
" Plug 'drewtempelmeyer/palenight.vim'
" Plug 'haishanh/night-owl.vim'
" Plug 'ayu-theme/ayu-vim'
" Plug 'tomasr/molokai'
" Plug 'fmoralesc/molokayo'
" Plug 'sjl/badwolf'
" Plug 'sickill/vim-monokai'
" Plug 'patstockwell/vim-monokai-tasty'
" Plug 'kaicataldo/material.vim'
" Plug 'chriskempson/base16-vim'
" Plug 'ajh17/Spacegray.vim'

" Plug 'metakirby5/codi.vim'
