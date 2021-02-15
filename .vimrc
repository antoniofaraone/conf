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

" Tabnine
Plug 'zxqfl/tabnine-vim'

" Toml 
Plug 'cespare/vim-toml'

" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'vim-latex/vim-latex'

Plug 'tpope/vim-surround'

" Solidity plugin
Plug 'tomlion/vim-solidity'

" Commentar
Plug 'tpope/vim-commentary'

" Prettier
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

"Rainbow parenthesi
Plug 'luochen1990/rainbow'

" auto close parenthesis
Plug 'jiangmiao/auto-pairs'

" React
Plug 'othree/yajs.vim'

Plug 'maxmellon/vim-jsx-pretty'

" Emmet
Plug 'mattn/emmet-vim'

" AutoCompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'} 

" vim test
Plug 'vim-test/vim-test'

" Higlight
Plug 'romainl/vim-cool'

call plug#end()


""""""""""""""""""""""" Configurazioni""""""""""""
let mapleader = " "
set encoding=utf-8
set laststatus=2
set noshowmode
set nu
set relativenumber
set ruler
set title

" Indentation
set autoindent
set shiftwidth=2
set tabstop=2
set softtabstop=2
set shiftround
set expandtab

" Searching
set ignorecase
set smartcase
set gdefault
set hlsearch
set showmatch

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

" Prettier
let g:prettier#quickfix_enabled = 0

autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" FZF
nnoremap <C-p> :GFiles<Cr>

" NerdTree
nmap <C-t> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Rainbow par
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" Emmet
let g:user_emmet_leader_key=','

" COC
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
"----- COC Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Autocompile latex
autocmd BufWritePost main.tex silent! execute "!pdflatex % >/dev/null 2>&1" | redraw!
