call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'quabug/vim-gdscript'
call plug#end()

set foldmethod=marker
set tabstop=4 shiftwidth=4 expandtab
set number

nnoremap <F7> :NERDTreeToggle<cr>
inoremap jk <ESC>
vnoremap jk <ESC>
