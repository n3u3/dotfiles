:set mouse=a
execute pathogen#infect()
set nocompatible              " required
filetype on                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'arcticicestudio/nord-vim'
colorscheme nord
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let NERDTreeShowHidden=1
Plugin 'kien/ctrlp.vim'
set nu
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'

Plugin 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set encoding=utf8
"set encoding=utf-8 nobomb

let python_highlight_all=1
syntax on

set clipboard=unnamed

map <C-f> :NERDTreeToggle<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
map  <C-w> :quit<CR>

"set editing-mode vi

" Airline config
"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tmuxline#enabled = 1
let g:airline_inactive_collapse = 1 
let g:virtualenv_auto_activate = 1
set laststatus=2

" Enable folding
set foldmethod=indent
set foldlevel=99
" enble folding with the spacebar
nnoremap <space> za
au BufNewFile,BufRead *.py;
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
