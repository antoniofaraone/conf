call plug#begin('~/.vim/plugged')
" Theme
Plug 'arcticicestudio/nord-vim'

" Easy-motion
Plug 'easymotion/vim-easymotion'

" Barra 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" NerddTree 
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'


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

" emoticon
Plug 'junegunn/vim-emoji'

" Toml 
Plug 'cespare/vim-toml'

" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

Plug 'tpope/vim-surround'

" Solidity plugin
Plug 'tomlion/vim-solidity'

" Commentar
Plug 'tpope/vim-commentary'

" Prettier
Plug 'prettier/vim-prettier', { 'do': 'npm install' }


call plug#end()

""""""""""""""""""""""" Configurazioni""""""""""""

nmap <C-t> :NERDTreeToggle<CR>
set nu
set relativenumber
set laststatus=2
set encoding=utf-8
set noshowmode
let mapleader = ","

" Indentation
set autoindent
set shiftwidth=2
set tabstop=2
set softtabstop=2
set shiftround
set expandtab
" Direction keys for wrapped lines
nnoremap <silent> k gk
nnoremap <silent> j gj
nnoremap <silent> <Up> gk
nnoremap <silent> <Down> gj
inoremap <silent> <Up> <Esc>gka
inoremap <silent> <Down> <Esc>gja

" Bash / emacs keys for command line
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
:autocmd InsertEnter,InsertLeave * set cul!

" Visual prompt for command completion
set wildmenu
""""""""""""""""""""" TEMA """""""""""""""""""""""
syntax on
colorscheme nord

""""""""""""""""""" Plugin config """""""""""""""" 
" [1] unimpaired
" Move single lines
nmap <C-k> [e
nmap <C-j> ]e
" " Move multiple lines selected
vmap <C-k> [egv
vmap <C-j> ]egv
:imap jj <Esc>

" Airline config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish'

" Emoji
set completefunc=emoji#complete

" Prettier
let g:prettier#quickfix_enabled = 0

autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

