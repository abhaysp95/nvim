"-------All-the-plugins-for-vim-and-nvim----------------------
call plug#begin()
" syntax and error detection
Plug 'dense-analysis/ale'
" , { 'on': 'ALEEnable' }

" intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" do cheating
Plug 'dbeniamine/cheat.sh-vim'

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" for html
Plug 'mattn/emmet-vim'

" for go
Plug 'fatih/vim-go'

" better repitition
Plug 'tpope/vim-repeat'

" minimal autopairs
Plug 'cohama/lexima.vim'

" surround
Plug 'tpope/vim-surround'

" floaterm
Plug 'voldikss/vim-floaterm'

" Theme / Interface
Plug 'cocopon/iceberg.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'cormacrelf/vim-colors-github'
Plug 'lifepillar/vim-gruvbox8'
Plug 'chuling/ci_dark'
Plug 'ayu-theme/ayu-vim'
Plug 'sainnhe/edge'
"Plug 'rakr/vim-one'
"Plug 'NLKNguyen/papercolor-theme'
"Plug 'dikiaap/minimalist'
"Plug 'nanotech/jellybeans.vim'
"Plug 'KabbAmine/yowish.vim'
"Plug 'sindresorhus/focus', {'rtp': 'vim'}
"Plug 'kadekillary/skull-vim'
Plug 'tomasiser/vim-code-dark'


" icons
Plug 'ryanoasis/vim-devicons'

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

" file navigations
Plug 'justinmk/vim-dirvish'

" fuzzy file navigations
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" vim-tmux navigator
Plug 'christoomey/vim-tmux-navigator'

" maximaization/restoration
Plug 'szw/vim-maximizer'

" vimwiki/markdown
"Plug 'vimwiki/vimwiki'
"Plug 'tbabej/taskwiki'
"Plug 'plasticboy/vim-markdown'

call plug#end()

"autocmd VimEnter *
			"\ if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
			"\ | PlugInstall | q
			"\ | endif



" Plug 'junegunn/rainbow_parentheses.vim'
" Plug 'bagrat/vim-buffet'
" Plug 'chriskempson/base16-vim'
" Plug 'danilo-augusto/vim-afterglow'
" Plug 'gcmt/wildfire.vim'
" Plug 'kaicataldo/material.vim'
" Plug 'liuchengxu/vim-which-key'
" Plug 'machakann/vim-sandwich'
" Plug 'mhartington/oceanic-next'
" Plug 'owickstrom/vim-colors-paramount'
" Plug 'sickill/vim-monokai'
" Plug 'sjl/badwolf'
" Plug 'jaredgorski/fogbell.vim'
" Plug 'YorickPeterse/happy_hacking.vim'
" Plug 'axvr/photon.vim'
" Plug 'phanviet/vim-monokai-pro'
" Plug 'romainl/Apprentice'
" Plug 'lifepillar/vim-solarized8'
" Plug 'jacoborus/tender.vim'
" Plug 'reedes/vim-colors-pencil'
" Plug 'artanikin/vim-synthwave84'
" Plug 'sainnhe/forest-night'
" Plug 'lisposter/vim-blackboard'
" Plug 'huyvohcmc/atlas.vim'
" Plug 'nightsense/snow'
" Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
" Plug 'coolabhays/nord-vim'
" Plug 'w0ng/vim-hybrid'
" Plug 'whatyouhide/vim-gotham'
" Plug 'coolabhays/molokai'
" Plug 'coolabhays/molokayo'
" Plug 'jacoborus/tender.vim'
" Plug 'AlessandroYorba/Alduin'
" Plug 'AlessandroYorba/Sierra'
" Plug 'joshdick/onedark.vim'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'cormacrelf/vim-colors-github'
" Plug 'cocopon/iceberg.vim'
" Plug 'sainnhe/sonokai'
" Plug 'haishanh/night-owl.vim'
" Plug 'herrbischoff/cobalt2.vim'
" Plug 'fxn/vim-monochrome'
" Plug 'ajh17/Spacegray.vim'
"Plug 'luochen1990/rainbow'
"Plug 'arzg/vim-colors-xcode'
"Plug 'bluz71/vim-nightfly-guicolors'
"Plug 'ghifarit53/tokyonight-vim'
"Plug 'gruvbox-community/gruvbox'
"Plug 'sainnhe/gruvbox-material'
"Plug 'srcery-colors/srcery-vim'
"Plug 'dracula/vim', {'as': 'dracula'}
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'Badacadabra/vim-archery'
"Plug 'bluz71/vim-moonfly-colors'
"Plug 'patstockwell/vim-monokai-tasty'
"Plug 'Rigellute/shades-of-purple.vim'
"Plug 'embark-theme/vim'
"Plug 'rafi/awesome-vim-colorschemes'
"Plug 'chriskempson/base16-vim'
"Plug 'pbrisbin/vim-colors-off'
"Plug 'safv12/andromeda.vim'
"Plug 'ntk148v/vim-horizon'
"Plug 'chuling/equinusocio-material.vim'
"Plug 'flazz/vim-colorschemes'

" Plug 'metakirby5/codi.vim'
" Plug 'takac/vim-hardtime'

" show undo history in tree
" Plug 'mbbill/undotree'

" completion
" Plug 'vim-scripts/AutoComplPop'

" live results
" Plug 'jpalardy/vim-slime'

" No distractions
" Plug 'junegunn/limelight.vim'
" Plug 'junegunn/goyo.vim'

" Bullets
"Plug 'dkarter/bullets.vim'
