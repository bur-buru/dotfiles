" Burburu .vimrc

set nocompatible               " get rid of Vi compatibility mode. SET FIRST!
set encoding=utf-8             " set utf-8 encoding
let g:powerline_pycmd="py3"    " set python to python 3
filetype plugin indent on      " filetype detection[ON] plugin[ON] indent[ON]
set t_Co=256                   " enable 256-color mode.
let base16colorspace=256       " Access colors present in 256 colorspace
syntax enable                  " enable syntax highlighting (previously syntax on).
"colorscheme desert             " set colorscheme
set number                     " show line numbers
set laststatus=2               " last window always has a statusline
filetype indent on             " activates indenting for files
set nohlsearch                 " Don't continue to highlight searched phrases.
set incsearch                  " But do highlight as you type your search.
set ignorecase                 " Make searches case-insensitive.
set ruler                      " Always show info along bottom.
set autoindent                 " auto-indent
set tabstop=4                  " tab spacing
set softtabstop=4              " unify
set shiftwidth=4               " indent/outdent by 4 columns
set shiftround                 " always indent/outdent to the nearest tabstop
set expandtab                  " use spaces instead of tabs
set smarttab                   " use tabs at the start of a line, spaces elsewhere
set nowrap                     " don't wrap text
set number                     " Line numbers
set showtabline=2              " Show tab line
set mouse=a                    " Mouse scroll
set ttymouse=xterm2            " mouse option
set fillchars+=stl:\ ,stlnc:\  " status line characters not displaying

" powerline
set rtp+=/usr/lib/python3.7/site-packages/powerline/bindings/vim

" Vim-Plug plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Vim-Plug help
Plug 'junegunn/vim-plug'

" Section highlighting
Plug 'junegunn/limelight.vim'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Devicons
Plug 'ryanoasis/vim-devicons'

" Initialize plugin system
call plug#end()
