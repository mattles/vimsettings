
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

"search options
set hlsearch
set ignorecase "turn ignore case on for / search
set smartcase 
set incsearch "show search matches as you type

map <F2> :NERDTreeToggle<CR>
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


"need this for the snipmate snippets so that the .html.erb files have
"the right snippets
autocmd BufNewFile,BufRead *.html.erb set ft=html.eruby syntax=eruby
autocmd BufNewFile,BufRead *.html.erb set syntax=eruby
