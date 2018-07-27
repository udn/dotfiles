set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=2    " Indents will have a width of 4

set softtabstop=2   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces


set nocompatible              " be iMproved, required
filetype plugin indent on                  " required
syntax on
colorscheme solarized8_light
set number
set laststatus=2
set modelines=5
set incsearch
set nojoinspaces
set display +=lastline

if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <a-[> <Esc>
  tnoremap <a-h> <c-\><c-n><c-w>h
  tnoremap <a-j> <c-\><c-n><c-w>j
  tnoremap <a-k> <c-\><c-n><c-w>k
  tnoremap <a-l> <c-\><c-n><c-w>l

  nnoremap <a-h> <c-w>h
  nnoremap <a-j> <c-w>j
  nnoremap <a-k> <c-w>k
  nnoremap <a-l> <c-w>l
  
  tnoremap <expr> <A-r> '<C-\><C-n>"'.nr2char(getchar()).'pi'

endif


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

packadd minpac
call minpac#init()

call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-rails')
call minpac#add('tpope/vim-fugitive')
call minpac#add('kassio/neoterm')
call minpac#add('tpope/vim-rake')
call minpac#add('tpope/vim-bundler')
call minpac#add('wakatime/vim-wakatime')
call minpac#add('machakann/vim-highlightedyank')
call minpac#add('tpope/vim-scriptease', {"type": "opt"})
call minpac#add('k-takata/minpac', {"type": "opt"})
call minpac#add('vim-ruby/vim-ruby')
call minpac#add('adelarsq/vim-matchit')
call minpac#add('kana/vim-textobj-user')
call minpac#add('nelstrom/vim-textobj-rubyblock')

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()


augroup rubypath
  autocmd!
  autocmd FileType ruby setlocal suffixesadd+=.rb
augroup END
