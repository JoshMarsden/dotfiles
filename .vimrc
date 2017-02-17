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
