

"stops backwards compatability with vi
set nocompatible

filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'honza/vim-snippets'
Bundle 'MarcWeber/ultisnips'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-rails'
Bundle 'scrooloose/nerdtree'
Bundle 'ervandew/supertab'
Bundle 'jistr/vim-nerdtree-tabs'

filetype plugin indent on

"allows the closing of buffers with outsaving
set hidden

"shows the line, number and column number on the bottom
set ruler
"
"shows incomplete commands at the bottom of screen
set showcmd
set backspace=indent,eol,start
set autoindent
set smartindent
set number

"i think
set tabstop=4
set noexpandtab
set shiftwidth=4
set softtabstop=4

"search options
set hlsearch
set ignorecase "turn ignore case on for / search
set smartcase 
set incsearch "show search matches as you type

map <F2> :NERDTreeTabsToggle<CR>
map <F3> :TlistToggle<CR>
syntax on
inoremap jj <Esc>
filetype plugin on
colorscheme desert


let mapleader=","

"to easily edit and source this file
nmap <silent> <leader>ev :sp $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>


nnoremap ; :

"cursor goes up to the next row rather than the next line in wrapped files
nnoremap j gj
nnoremap k gk

"to make consistant with delete and change
nnoremap Y y$

"control arrow to move around the split windows
nnoremap <C-h>			<C-W>h
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

"need this for the snipmate snippets so that the .html.erb files have
"the right snippets
autocmd BufNewFile,BufRead *.html.erb set ft=html.eruby syntax=eruby
autocmd BufNewFile,BufRead *.html.erb set syntax=eruby

autocmd BufWinLeave * mkview
autocmd BufWinEnter * silent loadview
