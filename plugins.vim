call plug#begin('~/.vim/plugged')
" Theme
"Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim', { 'as': 'dracula' }

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

" Toml 
Plug 'cespare/vim-toml'

" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'vim-latex/vim-latex'

Plug 'tpope/vim-surround'

" Commentar
Plug 'tpope/vim-commentary'

" Prettier
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

"Rainbow parenthesi
Plug 'luochen1990/rainbow'

" auto close parenthesis
Plug 'jiangmiao/auto-pairs'

" React
"Plug 'othree/yajs.vim'

"Plug 'maxmellon/vim-jsx-pretty'

" Emmet
Plug 'mattn/emmet-vim'

" AutoCompletion
"Plug 'neoclide/coc.nvim', {'branch': 'release'} 

" vim test
Plug 'vim-test/vim-test'

" Higlight
Plug 'romainl/vim-cool'

call plug#end()

