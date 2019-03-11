" +------------------------------+
"     TT  ; TT TT\_/TT TT=\  ;**.
"     || /  || ||\_/|| ||_/ {|
"  {} L|/   L| L|   L| L| \  \\_,
" +------------------------------+

" Load the external plugins.vim file
"so ~/.vim/plugins.vim

" Common Preferred Settings:
" indentation
set autoindent ts=4 sw=4 expandtab
" number line
set nu
" coloring
syntax enable
colorscheme elflord
""colorscheme slate
" cool features
set mouse=a
"   ^ like allowing mouse clicks to change cursor position
map <f9> :make<CR>
"   ^ or map the F9 key to run make

"   Hold the bell! It hurts so much
set visualbell
set t_vb=

" Ignore case when searching
set ignorecase
" Show matching ')' and '}'
set showmatch
" Automatically break line if too long
set wrapscan
" Color the column to visually see suggested line limit
set colorcolumn=+0
" Set max width of text to 76 columns
set textwidth=80


" Editor Formatting Per Filetype:
" NOTE: autocmd depends on the Autocmd plugin being compiled to vim at install
autocmd Filetype makefile setlocal noexpandtab

" CPP Template:
" NOTE: '\' (back slash) will continue a line of code
map _cpp i
    \/*<CR>
    \Author:<TAB><TAB>Joshua<SPACE>Marsden<CR>
    \Description:<TAB>...<CR>
    \/<CR>
    \#include<SPACE><iostream><CR>
    \//#include<SPACE><cmath><CR>
    \#include<SPACE><cstdlib><CR>
    \#include<SPACE><fstream><CR>
    \#include<SPACE><vector><CR>
    \<ESC>0xxi<CR>
    \using namespace std;<CR>
    \<CR>
    \int main()<CR>
    \{<CR>
    \cout<SPACE><<<SPACE>"Hello<SPACE>World!"<SPACE><<<SPACE>endl;<CR>
    \// Start coding...<CR>
    \<ESC>hxxi<TAB><CR>
    \return 0;<CR>
    \}<ESC>kkkw


" Header Template:
" The following defines a header file template that dynamically creates
" an environment variable based on the file.h filename.
"
" This works by using <C-r>% (Ctrl-R) in vim to grab the current filename, 
" with which vim commands are used to replace the '.' before the extension 
" with a '_' to create an acceptable variable name.
map _head i
    \#ifndef<SPACE><C-r>%<ESC>br_
    \yyp0lcwdefine<ESC>

""map _ci :w<CR>:!ci -l %<CR>
""map _if iif(){<CR>}<ESC><UP>llli
""map _while iwhile(){<CR>}<ESC><UP>lllllli
""map _switch iswitch(){<CR>}<ESC><UP>llllllli
""map _case icase :<CR>break;<ESC>^<UP>lllli


" Cool Compile And Build Macros:
map _run <ESC>:!g++<SPACE>%<SPACE>-o<SPACE>%:r<SPACE>&&<SPACE>./%:r<CR>
"   ^ Runs command: `g++ <filename>.<ext> -o <filename> && ./<filename>`
map _gpp <ESC>:!g++<SPACE>%<CR>
"   ^ Simply checks code validity by trying to compile


" Markup And Scripting Languages:
map _html i<html><CR><head><CR></head><CR><body><CR>
    \<CR></body><CR><ESC>hi</html><ESC>kk
map _php i<?php<CR>?><ESC>kko
""map _xml i<?xml version="1.0" encoding="UTF-8"?>
""map _form i<form><CR><TAB><table border="0"><CR><TAB><tr><CR><TAB><td><CR></td>
""    \<CR><BS><BS></tr><CR><BS><BS></table><CR><BS><BS></form><ESC>
""map _tb i<input type="text" name="" value=""/><ESC>/name=<CR>lllllli
