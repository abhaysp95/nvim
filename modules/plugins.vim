"-------All-the-plugins-for-vim-and-nvim----------------------
call plug#begin()
" syntax and error detection
Plug 'dense-analysis/ale'

" completion
Plug 'vim-scripts/AutoComplPop'

" intellisense
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" for html
Plug 'mattn/emmet-vim'

" better repitition
Plug 'tpope/vim-repeat'

" minimal autopairs
Plug 'cohama/lexima.vim'

" surround
Plug 'tpope/vim-surround'

" Theme / Interface
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'sainnhe/gruvbox-material'
Plug 'coolabhays/nord-vim'
Plug 'w0ng/vim-hybrid'
Plug 'arzg/vim-colors-xcode'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'whatyouhide/vim-gotham'
Plug 'cocopon/iceberg.vim'

" No distractions
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'

" code commenter
Plug 'scrooloose/nerdcommenter'

" sxhkd syntax
Plug 'kovetskiy/sxhkd-vim'

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

" Indent line
Plug 'Yggdroot/indentLine'

" Learn movement in vim the hard way

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

" fuzzy file navigations
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" vim-tmux navigator
Plug 'christoomey/vim-tmux-navigator'

call plug#end()



" Plug 'Badacadabra/vim-archery'
" Plug 'ajh17/Spacegray.vim'
" Plug 'ayu-theme/ayu-vim'
" Plug 'bagrat/vim-buffet'
" Plug 'chriskempson/base16-vim'
" Plug 'danilo-augusto/vim-afterglow'
" Plug 'dracula/vim', {'as': 'dracula'}
" Plug 'drewtempelmeyer/palenight.vim'
" Plug 'fmoralesc/molokayo'
" Plug 'gcmt/wildfire.vim'
" Plug 'haishanh/night-owl.vim'
" Plug 'joshdick/onedark.vim'
" Plug 'kaicataldo/material.vim'
" Plug 'liuchengxu/vim-which-key'
" Plug 'machakann/vim-sandwich'
" Plug 'mhartington/oceanic-next'
" Plug 'nanotech/jellybeans.vim'
" Plug 'owickstrom/vim-colors-paramount'
" Plug 'patstockwell/vim-monokai-tasty'
" Plug 'rakr/vim-one'
" Plug 'ryanoasis/vim-devicons'
" Plug 'sickill/vim-monokai'
" Plug 'sjl/badwolf'
" Plug 'tomasr/molokai'
" Plug 'junegunn/rainbow_parentheses.vim'
" Plug 'jaredgorski/fogbell.vim'
" Plug 'YorickPeterse/happy_hacking.vim'
" Plug 'axvr/photon.vim'
" Plug 'gruvbox-community/gruvbox'
" Plug 'phanviet/vim-monokai-pro'
" Plug 'romainl/Apprentice'
" Plug 'lifepillar/vim-solarized8'
" Plug 'jacoborus/tender.vim'
" Plug 'arcticicestudio/nord-vim'
" Plug 'bluz71/vim-moonfly-colors'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'reedes/vim-colors-pencil'
" Plug 'sainnhe/sonokai'

" Plug 'metakirby5/codi.vim'
" Plug 'SirVer/ultisnips'
" Plug 'takac/vim-hardtime'
" Plug 'honza/vim-snippets'
