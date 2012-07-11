
call pathogen#infect()
call pathogen#helptags()


"stops backwards compatability with vi
set nocompatible


"allows the closing of buffers with outsaving
set hidden

"shows the line, number and column number on the bottom
set ruler
set backspace=indent,eol,start
set autoindent
set number

"this is to overide the ruby plugin settings for this
"however this should be in ~/.vim/after/ftplugin/ruby.vim
"i think
filetype indent plugin off
set tabstop=4
set noexpandtab
set shiftwidth=4
set softtabstop=4
"search options
set hlsearch
set ignorecase "turn ignore case on for / search
set smartcase 
set incsearch "show search matches as you type

set showcmd

map <F2> :NERDTreeToggle<CR>
map <F3> <leader>bs<CR>
syntax on
inoremap jj <Esc>
filetype plugin on
colorscheme desert


let mapleader=","

"to easily edit and source this file
nmap <silent> <leader>ev :sp $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>


nmap <silent> <leader>os :sp ~/.vim/bundle/snipmate-snippets/snippets/<CR>
nnoremap ; :

"cursor goes up to the next row rather than the next line in wrapped files
nnoremap j gj
nnoremap k gk

"to make consistant with delete and change
nnoremap Y y$

"control arrow to move around the split windows
nnoremap <C-h> 		<C-W>h
nnoremap <C-j>       	<C-W>j
nnoremap <C-k>      	<C-W>k
nnoremap <C-l>      	<C-W>l

nnoremap <C-Up>        <C-W>k
nnoremap <C-Down>      <C-W>j
nnoremap <C-Left>      <C-W>h
nnoremap <C-Right>     <C-W>l

nnoremap <M-Left>      gT
nnoremap <M-Right>     gt

nnoremap <S-Up>        <C-W>+
nnoremap <S-Down>      <C-W>-
nnoremap <S-Left>      <C-W><
nnoremap <S-Right>     <C-W>>

"fixed a funny display problem in NERDTree
let g:NERDTreeDirArrows=0


"need this for the snipmate snippets so that the .html.erb files have
"the right snippets
autocmd BufNewFile,BufRead *.html.erb set ft=html.eruby syntax=eruby
autocmd BufNewFile,BufRead *.html.erb set syntax=eruby
