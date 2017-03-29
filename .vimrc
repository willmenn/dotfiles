syntax enable

"Setting theme Tayra from https://github.com/the31k/vim-colors-tayra
colorscheme sift 

highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline

set number	 	" show line numbers
set showmode		" show current mode
set showcmd		" show already typed keys
set incsearch		" will highlight when searching with / or ?
set hlsearch		" keep matches highlighted
set title		" show file in titlebar
set textwidth=79	" break the line when gets in 79 char
set autoindent smartindent " turn on auto/smart indenting
set ruler		" show cursor position in status bar
set splitright
set splitbelow
"set clipboard=unnamed
"set guifont=Fira\ Code:h12
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" enable line numbers
let NERDTreeShowLineNumbers=1

call plug#begin('~/.vim/plugged')

"Installing hard mode
Plug 'https://github.com/willmenn/hardmode.git'

"Instlling nerdtree
Plug 'https://github.com/scrooloose/nerdtree.git'

"Installling vim-devcons
Plug 'https://github.com/ryanoasis/vim-webdevicons.git'

"Enabling Hard mode
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

"Installing Emmet for HTML/CSS Editing
Plug 'https://github.com/mattn/emmet-vim.git'

Plug 'https://github.com/vim-airline/vim-airline.git'

Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin.git'

Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight.git'

call plug#end()

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>
map <C-j> <C-W>j
map <Tab> :bn<CR>
nnoremap hh <C-W>h
nnoremap ll <C-W>l
nnoremap jj <C-W>j
nnoremap kk <C-W>k
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


" you can add these colors to your .vimrc to help customizing
 let s:brown = "905532"
 let s:aqua =  "3AFFDB"
 let s:blue = "689FB6"
 let s:darkBlue = "44788E"
 let s:purple = "834F79"
 let s:lightPurple = "834F79"
 let s:red = "AE403F"
 let s:beige = "F5C06F"
 let s:yellow = "F09F17"
 let s:orange = "D4843E"
 let s:darkOrange = "F16529"
 let s:pink = "CB6F6F"
 let s:salmon = "EE6E73"
 let s:green = "8FAA54"
 let s:lightGreen = "31B53E"
 let s:white = "FFFFFF"
 let s:rspec_red = 'FE405F'
 let s:git_orange = 'F54D27'

 let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid
" error
 let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css
" files to blue
"
 let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid
" error
 let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets
" the color for .gitignore files
"
 let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid
" error
 let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets
" the color for files ending with _spec.rb

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
