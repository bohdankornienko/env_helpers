" Brackets autocomplete
" inoremap { {<CR>}<Esc>ko
"let g:ycm_global_ycm_extra_conf = '$HOME/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"

set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set autoindent
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

filetype plugin on
let python_highlight_all=1
syntax on

" colorscheme slate " useful for bash in Windows 10

" Enable folding
set foldmethod=indent
set foldlevel=99

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" Plugin 'cjrh/vim-conda' " activates conda environment

" ctags generation
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'

" Source code explorers
" Plugin 'taglist.vim' " view the structure for source code
Plugin 'scrooloose/nerdtree' " Just explore the directory structure
Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:SimpylFold_docstring_preview=1

" Flapping unnecessary whitespaces
" ???
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

py3 << EOF
import os.path
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
EOF

set laststatus=2             "Always show the status bar and not on splited like before(this was the main problem)

"to fix the font and lot of strange characters and colors
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Brackets complete
inoremap { {<CR><BS>}<Esc>ko
