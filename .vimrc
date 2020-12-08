call plug#begin('~/.vim/plugged')

" Theme
Plug 'arcticicestudio/nord-vim'

" Easy-motion
Plug 'easymotion/vim-easymotion'

" Barra 
Plug 'itchyny/lightline.vim'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' 

" Multiple cursor
Plug 'terryma/vim-multiple-cursors'

" Autocompletion
Plug 'davidhalter/jedi-vim'

" [1] Move line up and down 
Plug 'tpope/vim-unimpaired'
" Initialize plugin system
"
" Tabnine
Plug 'zxqfl/tabnine-vim'
call plug#end()

""""""""""""""""""""""" Configurazioni""""""""""""

nmap <C-t> :NERDTreeToggle<CR>
set nu
set relativenumber
set laststatus=2
set noshowmode
let mapleader = ","
""""""""""""""""""""" TEMA """""""""""""""""""""""
syntax enable
colorscheme nord

""""""""""""""""""" Plugin config """""""""""""""" 
" [1]
" Move single lines
nmap <C-k> [e
nmap <C-j> ]e
" " Move multiple lines selected
vmap <C-k> [egv
vmap <C-j> ]egv
:imap jj <Esc>
:autocmd InsertEnter,InsertLeave * set cul!
