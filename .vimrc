" ================================================================================ 
" => New Installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" ================================================================================ 
" => Plugins
source ~/.vim/plugins.vim

" ================================================================================ 
" => Editor config

let mapleader = " "
set encoding=utf-8
set laststatus=2
set noshowmode
set nu
set relativenumber
set ruler
set title

" ================================================================================ 
" => Indentation
set autoindent
set shiftwidth=2
set tabstop=2
set softtabstop=2
set shiftround
set expandtab


" ================================================================================ 
" => Searching
set ignorecase
set smartcase
set gdefault
set hlsearch
set showmatch


" ================================================================================ 
" => Direction keys for wrapped lines
nnoremap <silent> k gk
nnoremap <silent> j gj
nnoremap <silent> <Up> gk
nnoremap <silent> <Down> gj
inoremap <silent> <Up> <Esc>gka
inoremap <silent> <Down> <Esc>gja



" ================================================================================ 
" => Bash / emacs keys for command line
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
:autocmd InsertEnter,InsertLeave * set cul!



" ================================================================================ 
" => Visual prompt for command completion
set wildmenu



" ================================================================================ 
" => Theme
syntax on
colorscheme nord



" ================================================================================ 
" => Plugin config 


" => [1] unimpaired
" Move single lines
nmap <C-k> [e
nmap <C-j> ]e
" " Move multiple lines selected
vmap <C-k> [egv
vmap <C-j> ]egv
:imap jj <Esc>

" => Airline config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish'

" =>  Prettier
let g:prettier#quickfix_enabled = 0

autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" =>  FZF
nnoremap <C-p> :GFiles<Cr>

" =>  NerdTree
nmap <C-t> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" =>  Rainbow par
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" =>  Emmet
let g:user_emmet_leader_key=','

" =>  COC
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
"----- COC Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" =>  Autocompile latex
autocmd BufWritePost main.tex silent! execute "!pdflatex % >/dev/null 2>&1" | redraw!
