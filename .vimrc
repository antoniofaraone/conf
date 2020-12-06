" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Tema
Plug 'arcticicestudio/nord-vim'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Easy-motion
Plug 'easymotion/vim-easymotion'

" Barra 
Plug 'itchyny/lightline.vim'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Multiple cursor

Plug 'terryma/vim-multiple-cursors'

" Autocompletion

Plug 'davidhalter/jedi-vim'

" [1] Move line up and down 
Plug 'tpope/vim-unimpaired'
" Initialize plugin system
"
" Theme
Plug 'mhartington/oceanic-next'

" Tabnine
Plug 'zxqfl/tabnine-vim'
call plug#end()

""""""""""""""""""""""" Configurazioni
""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <C-t> :NERDTreeToggle<CR>

""""""""""""""""""""" TEMA """""""""""""""""""""""
syntax enable
colorscheme nord
set nu
set relativenumber
let mapleader = ","
set laststatus=2
set noshowmode
" [1]
" Move single lines
nmap <C-k> [e
nmap <C-j> ]e
" " Move multiple lines selected
vmap <C-k> [egv
vmap <C-j> ]egv
:imap jj <Esc>
:autocmd InsertEnter,InsertLeave * set cul!
