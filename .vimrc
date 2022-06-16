"Plugins
call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'szw/vim-maximizer'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'raimondi/delimitmate'
Plug 'ryanoasis/vim-devicons' "Needs to be the last one
call plug#end()

"Appearance
set t_Co=256
colorscheme onedark
syntax on
set background=dark

"Tabs/Spaces
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent

"Other
set number
set nowrap
set smartcase
set cursorline
set showcmd
set incsearch
set noswapfile
set noerrorbells
set undofile
set undodir=~/.vim/undodir
set encoding=UTF-8

let mapleader=" "

nnoremap <Leader>h :wincmd h<Return>
nnoremap <Leader>j :wincmd j<Return>
nnoremap <Leader>k :wincmd k<Return>
nnoremap <Leader>l :wincmd l<Return>
nnoremap <Leader>m :MaximizerToggle<Return>
nnoremap <Leader>d :bd<Return>
nnoremap <Leader>+ :vertical resize +5<Return>
nnoremap <Leader>- :vertical resize -5<Return>

" NERDTree
nnoremap <silent> <Leader>nt :NERDTree<Return>

" FZF
nnoremap <silent> <Leader>f :FZF<Return>

