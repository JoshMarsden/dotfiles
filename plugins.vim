" Plugin tips followed from Alex Hunt
" <https://medium.com/@huntie/10-essential-vim-plugins-for-2018-39957190b7a9>
" This file is external so that the main .vimrc file is easier to read

" Setting up Vundle plugin manager
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage plugins, required
Plugin 'VundleVim/Vundle.vim'

" Fuzzy file finder plugin
Plugin 'junegunn/fzf'
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" Lightline status bar plugin
Plugin 'itchyny/lightline.vim'
set laststatus=2

" Multiple cursors plugin
Plugin 'terryma/vim-multiple-cursors'

" Vim surround plugin
Plugin 'anyakichi/vim-surround'

" Nerd tree plugin
Plugin 'scrooloose/nerdtree'

" Yessss! Custom configs for filetypes
Plugin 'editorconfig/editorconfig-vim'

" Asynchronous Linting Engine (for checking syntax on the fly)
Plugin 'w0rp/ale'
let g:ale_set_highlights = 1
" The fixers that ALE will run on given filetypes
let g:ale_fixers = {'python': ['black'], 'javascript': ['eslint']}
highlight ALEError ctermbg=none cterm=underline

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
