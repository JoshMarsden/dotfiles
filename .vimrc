set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

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





" Line numbers
set number

" Turns on syntax highlighting
syntax enable

" Other colorschemes:
colorscheme elflord
"colorscheme blue
"colorscheme desert
"colorscheme delek
"colorscheme evening
"colorscheme morning
"colorscheme murphy
"colorscheme darkblue
"colorscheme koehler
"colorscheme pablo
"colorscheme peachpuff
"colorscheme slate

" Tab settings
set tabstop=4
set shiftwidth=4
set smarttab
set autoindent
set expandtab

" Gets rid of those annoying swapfile errors
" but doesn't save lost work
set noswapfile

" Set a Visual Bell instead of the audible one
set vb

" Automatically try to detect filetypes
filetype on


" CPP template samples
map _cpp i#include<iostream><CR><CR>using namespace std;<CR><CR>int main()<CR>{<CR><CR>return 0;<CR>}<UP><UP><ESC>o
map _math <ESC>o#include<cmath><ESC>
map _time <ESC>o#include<ctime><ESC>
" CPP compile commands
map _run <ESC>:!g++<SPACE>%<SPACE>&&<SPACE>./a.out<CR>
map _gpp <ESC>:!g++<SPACE>%<CR>

map _open <ESC>:e<SPACE>

" Other template samples
map _php i<?php<CR>?><UP><UP><ESC>o
" HTML templates
map _html i<html><CR>  <head><CR></head><CR><body><CR><CR></body><CR><LEFT><LEFT></html><UP><UP>
map _tb i<input type="text" name="" value=""/><ESC>/name=<CR>lllllli
map _form i<form><CR><TAB><table border="0"><CR><TAB><tr><CR><TAB><td><CR></td><CR><BS><BS></tr><CR><BS><BS></table><CR><BS><BS></form><ESC>
" XML template
map _xml i<?xml version="1.0" encoding="UTF-8"?>
