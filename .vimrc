set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Bundle 'fholgado/minibufexpl.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'alessandroyorba/monrovia'
Bundle 'aperezdc/vim-template'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set encoding=utf-8
set nu

set mouse=a

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
" au BufNewFile *.py 0r ~/.vim/skeleton.py

" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

let python_highlight_all=1
syntax on

" autocmd FileType python set autoindent
map <C-n> :NERDTreeToggle<CR>
let g:SimpylFold_docstring_preview = 1

" Enable folding with the spacebar
nnoremap <space> za

set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256

set background=dark
:colorscheme wombat256mod
":colorscheme solarized

" Vim-template user variables
" = deb.goswami@dentsuaegis.com
