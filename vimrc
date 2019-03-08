" Burburu .vimrc

" Powerline
set rtp+=/usr/lib/python3.7/site-packages/powerline/bindings/vim

set nocompatible               " get rid of Vi compatibility mode. SET FIRST!
set encoding=utf-8             " set utf-8 encoding
let base16colorspace=256       " Access colors present in 256 colorspace
syntax enable                  " enable syntax highlighting (previously syntax on).
set ruler                      " Always show info along bottom.
set number                     " show line numbers
set nowrap                     " don't wrap text
set showtabline=2              " Show tab line
set laststatus=2               " last window always has a statusline
set mouse=a                    " Mouse scroll
let g:powerline_pycmd="py3"    " set python to python 3

"set fillchars+=stl:\ ,stlnc:\  " status line characters not displaying

" colorscheme base16-google-dark
