syntax enable

"Setting theme Tayra from https://github.com/the31k/vim-colors-tayra
colorscheme tayra 

"Setting number in lines
set number

call plug#begin('~/.vim/plugged')

"Installing hard mode
Plug 'https://github.com/wikitopian/hardmode.git'

"Instlling nerdtree
Plug 'https://github.com/scrooloose/nerdtree.git'

"Installling vim-devcons
Plug 'https://github.com/ryanoasis/vim-devicons.git'

"Enabling Hard mode
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

call plug#end()

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>

"Setting backup folder, swap folder and undo folder.
set backup
set backupdir 	=~/.vim/files/backup/
set backupext 	=-vimbackup
set backupskip	=
set directory	=~/.vim/files/swap/
set updatecount	=100
set undofile
set undodir	=~/.vim/files/undo/
set viminfo	='100,n~/.vim/files/info/viminfo
