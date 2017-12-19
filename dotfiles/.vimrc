call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'quabug/vim-gdscript'
Plug 'fatih/vim-go'
call plug#end()

filetype plugin on

let g:go_fmt_autosave = 0
let g:go_def_mode = "godef"

set foldmethod=marker
set tabstop=4 shiftwidth=4 expandtab
set number

nnoremap <C-n> :NERDTreeToggle<cr>
inoremap jk <ESC>
vnoremap jk <ESC>
