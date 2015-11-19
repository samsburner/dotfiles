" ~/.vimrc"
set nocompatible


filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
let path='~/.vim/bundle'
call vundle#begin(path)

Plugin 'gmarik/Vundle.vim'

Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'

call vundle#end()
filetype plugin indent on

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" recent addition, trying to fix statusline
let g:airline_powerline_fonts = 1

" unicode symbols"
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols"
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"-------------------------"
" FILETYPE SETTINGS "
"-------------------------"
autocmd FileType css,less set smartindent
autocmd FileType html,css set noexpandtab tabstop=2
autocmd FileType html set sts=4 sw=4 et
autocmd FileType javascript set sts=2 sw=2 et
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd FileType markdown set sts=4 sw=4 et tw=68
autocmd FileType python set sts=4 sw=4 et
autocmd FileType sql set sts=4 sw=4 et
autocmd FileType vim set sts=2 sw=2 et


set number
set backspace=indent,eol,start
set nobackup
set nowritebackup
set showmode
set showmatch
set wildmenu
set splitbelow
set splitright

set encoding=utf-8 
set helplang=en
set history=1000
set shiftwidth=4
set autoindent
set smartindent
set smarttab
set expandtab
set tabstop=4

set hlsearch
set incsearch
set ignorecase
set smartcase
set mouse=a
set ruler
set showcmd

set cmdheight=2
set scrolloff=3
set laststatus=2
set statusline+=%F
set hidden
set lazyredraw
set magic

set t_Co=256
colorscheme torte
set background=dark

noremap <S-space> <C-b>
noremap <space> <C-f>

let mapleader=","
let g:mapleader=","

nnoremap <leader>qa :qa<CR>
nnoremap <leader>q :q!<CR>

inoremap jj <Esc>  

nnoremap <leader>w <C-w>v<C-w>l

"map <C-l> :tabn<CR>
"map <C-h> :tabp<CR>
"map <C-n> :tabnew<CR>
