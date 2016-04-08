syntax enable

"Setting theme Tayra from https://github.com/the31k/vim-colors-tayra
colorscheme tayra 

"Setting number in lines
set number

call plug#begin('~/.vim/plugged')

"Installing hard mode
Plug 'https://github.com/wikitopian/hardmode.git'

"Enabling Hard mode
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()


call plug#end()
