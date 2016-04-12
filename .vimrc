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

"Enabling Hard mode
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()


call plug#end()

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>

