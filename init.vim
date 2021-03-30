"      ██╗███╗   ██╗██╗████████╗   ██╗   ██╗██╗███╗   ███╗
"      ██║████╗  ██║██║╚══██╔══╝   ██║   ██║██║████╗ ████║
"      ██║██╔██╗ ██║██║   ██║      ██║   ██║██║██╔████╔██║
"      ██║██║╚██╗██║██║   ██║      ╚██╗ ██╔╝██║██║╚██╔╝██║
"      ██║██║ ╚████║██║   ██║   ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║
"      ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝   ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
"                                  -> Abhay Shanker Pathak

" I 😍 N/vim
" It's just 🔥

let mapleader = "\<Space>"
let maplocalleader = "\\"

if has('win32')
	source C:\Users\raytracer\_vimrc
elseif exists("g:vscode")
	source $HOME/.config/nvim/modules/settings.vim
	source $HOME/.config/nvim/modules/keybindings.vim
else

	source $HOME/.config/nvim/modules/plugins.vim
	source $HOME/.config/nvim/modules/plugin_settings.vim
	source $HOME/.config/nvim/modules/settings.vim
	source $HOME/.config/nvim/modules/keybindings.vim
	lua require 'init'

	augroup autosourcing
		autocmd!
		autocmd BufWritePost ~/.config/nvim/init.vim,~/.config/nvim/modules/color_settings.vim source %
		" cause I make changes in color_settings much frequently
	augroup END
endif

" source $HOME/.config/nvim/modules/vim-buffet.vim
" source ~/.config/nvim/modules/old_statusline.vim
" source $HOME/.config/nvim/modules/airline_conf.vim
" source ~/.config/nvim/modules/statusline_dhruv.vim
" source ~/.config/nvim/modules/tabline.vim
" source ~/.config/nvim/modules/statusline.vim
