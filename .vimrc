""""""""""""""""""""""""""""""
"""""""""My vim set"""""""""""
""""""""""""""""""""""""""""""
" set for the monitor
set hlsearch
set nu
set ruler
set cursorline
set expandtab
set tabstop=4
set autoindent
set incsearch
set t_Co=256
set wildmode=list:longest
set backspace=indent,eol,start

augroup EditVim
    au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
augroup END

au BufRead,BufNewFile *.txt set filetype=log

"color molokai
if v:version < 802
    packadd! dracula
endif
syntax enable

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"colorscheme dracula

call plug#begin()
" List your plugins here
Plug 'mtdl9/vim-log-highlighting'
call plug#end()
