"Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'neoclide/coc.nvim'
Plug 'szw/vim-maximizer'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'raimondi/delimitmate'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons' "Needs to be the last one
call plug#end()

"Appearance
set t_Co=256
colorscheme onedark
set background=dark
syntax on

"Other
set number
set nowrap
set smartcase
set cursorline
set showcmd
set incsearch
set noswapfile
set noerrorbells
set mouse=a
set guicursor=

"Default tab settings
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab

autocmd BufNewFile,BufRead *.py,*.c,*.cpp,*.h,*.hpp
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

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
nnoremap <silent> <Leader>nt :NERDTreeToggle<Return>

" FZF
nnoremap <silent> <Leader>f :FZF<Return>

" Tagbar
nnoremap <F8> :TagbarToggle<Return>

" CoC
nmap <silent> gs :call CocAction('jumpDefinition', 'vsplit')<CR>
" nmap <silent> gd :call CocAction('jumpDefinition', 'vsplit')<CR>
" nmap <silent> gt :call CocAction('jumpDefinition', 'tabe')<CR>
" gt is reserved already

" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
