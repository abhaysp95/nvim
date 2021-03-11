"-------All-the-plugins-for-vim-and-nvim----------------------
call plug#begin()

" nvim lsp
Plug 'neovim/nvim-lspconfig'
Plug 'sumneko/lua-language-server'
Plug 'tjdevries/nlua.nvim'
Plug 'tjdevries/lsp_extensions.nvim'
Plug 'onsails/lspkind-nvim'

" completion
"Plug 'nvim-lua/completion-nvim'
"Plug 'steelsojka/completion-buffers'   "  <-- requires checking
"Plug 'kristijanhusak/completion-tags'  "  <-- requires checking
"Plug 'nvim-treesitter/completion-treesitter'
"Plug 'albertoCaroM/completion-tmux'
Plug 'hrsh7th/nvim-compe'

" snippets
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
"Plug 'norcalli/snippets.nvim'

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" cmake
Plug 'cdelledonne/vim-cmake'
if has("nvim")
	Plug 'antoinemadec/FixCursorHold.nvim'
endif

" nvim-jdtls
Plug 'mfussenegger/nvim-jdtls'

" for html
Plug 'mattn/emmet-vim'

" for go
Plug 'fatih/vim-go'

" better repitition
Plug 'tpope/vim-repeat'

" minimal autopairs
"Plug 'cohama/lexima.vim'  "  had to leave cause I can't make it work properly with nvim-completion

" surround
Plug 'tpope/vim-surround'

" floaterm
Plug 'voldikss/vim-floaterm'

" Theme / Interface
Plug 'phanviet/vim-monokai-pro'
Plug 'tomasr/molokai'
Plug 'fmoralesc/molokayo/'
Plug 'romgrk/doom-one.vim'
Plug 'ChristianChiarulli/nvcode-color-schemes.vim'

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
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'

" vim-tmux navigator
Plug 'christoomey/vim-tmux-navigator'

" degugging, maximaization/restoration
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'

call plug#end()

"autocmd VimEnter *
			"\ if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
			"\ | PlugInstall | q
			"\ | endif



"Plug 'AlessandroYorba/Alduin'
"Plug 'AlessandroYorba/Sierra'
"Plug 'Badacadabra/vim-archery'
"Plug 'KabbAmine/yowish.vim'
"Plug 'NLKNguyen/papercolor-theme'
"Plug 'Rigellute/shades-of-purple.vim'
"Plug 'YorickPeterse/happy_hacking.vim'
"Plug 'ajh17/Spacegray.vim'
"Plug 'arcticicestudio/nord-vim'
"Plug 'artanikin/vim-synthwave84'
"Plug 'arzg/vim-colors-xcode'
"Plug 'axvr/photon.vim'
"Plug 'ayu-theme/ayu-vim'
"Plug 'bagrat/vim-buffet'
"Plug 'bluz71/vim-moonfly-colors'
"Plug 'bluz71/vim-nightfly-guicolors'
"Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
"Plug 'chriskempson/base16-vim'
"Plug 'chuling/ci_dark'
"Plug 'chuling/equinusocio-material.vim'
"Plug 'cocopon/iceberg.vim'
"Plug 'coolabhays/molokai'
"Plug 'coolabhays/molokayo'
"Plug 'coolabhays/nord-vim'
"Plug 'cormacrelf/vim-colors-github'
"Plug 'danilo-augusto/vim-afterglow'
"Plug 'dikiaap/minimalist'
"Plug 'dracula/vim', {'as': 'dracula'}
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'embark-theme/vim'
"Plug 'flazz/vim-colorschemes'
"Plug 'fxn/vim-monochrome'
"Plug 'gcmt/wildfire.vim'
"Plug 'ghifarit53/tokyonight-vim'
"Plug 'gruvbox-community/gruvbox'
"Plug 'haishanh/night-owl.vim'
"Plug 'herrbischoff/cobalt2.vim'
"Plug 'huyvohcmc/atlas.vim'
"Plug 'jacoborus/tender.vim'
"Plug 'jacoborus/tender.vim'
"Plug 'jaredgorski/fogbell.vim'
"Plug 'joshdick/onedark.vim'
"Plug 'junegunn/rainbow_parentheses.vim'
"Plug 'kadekillary/skull-vim'
"Plug 'kaicataldo/material.vim'
"Plug 'lifepillar/vim-gruvbox8'
"Plug 'lifepillar/vim-solarized8'
"Plug 'lisposter/vim-blackboard'
"Plug 'liuchengxu/vim-which-key'
"Plug 'luochen1990/rainbow'
"Plug 'machakann/vim-sandwich'
"Plug 'mhartington/oceanic-next'
"Plug 'nanotech/jellybeans.vim'
"Plug 'nightsense/snow'
"Plug 'ntk148v/vim-horizon'
"Plug 'owickstrom/vim-colors-paramount'
"Plug 'patstockwell/vim-monokai-tasty'
"Plug 'pbrisbin/vim-colors-off'
"Plug 'phanviet/vim-monokai-pro'
"Plug 'rafi/awesome-vim-colorschemes'
"Plug 'rakr/vim-one'
"Plug 'reedes/vim-colors-pencil'
"Plug 'romainl/Apprentice'
"Plug 'safv12/andromeda.vim'
"Plug 'sainnhe/edge'
"Plug 'sainnhe/forest-night'
"Plug 'sainnhe/gruvbox-material'
"Plug 'sainnhe/sonokai'
"Plug 'sickill/vim-monokai'
"Plug 'sindresorhus/focus', {'rtp': 'vim'}
"Plug 'sjl/badwolf'
"Plug 'srcery-colors/srcery-vim'
"Plug 'tomasiser/vim-code-dark'
"Plug 'w0ng/vim-hybrid'
"Plug 'whatyouhide/vim-gotham'

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

" syntax and error detection
" Plug 'dense-analysis/ale'
" , { 'on': 'ALEEnable' }

" intellisense
"Plug 'neoclide/coc.nvim', {'branch': 'release'}


" do cheating
" Plug 'dbeniamine/cheat.sh-vim'

" vimwiki/markdown
"Plug 'vimwiki/vimwiki'
"Plug 'tbabej/taskwiki'
"Plug 'plasticboy/vim-markdown'


" fuzzy file navigations
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'

" auto-pairs
" Plug 'windwp/nvim-autopairs'
