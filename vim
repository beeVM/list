set nu
set ts=2
set expandtab
set autoindent
set hlsearch
set cursorline
set ruler
syntax on

" Plug
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes' 
Plug 'scrooloose/nerdcommenter'
Plug 'rrethy/vim-illuminate'
Plug 'Yggdroot/indentLine'
call plug#end()

let g:airline_theme = 'zenburn'
hi illuminatedWord ctermfg=white ctermbg=99

" IndentLine
" Enable IndentLine plugin
let g:indentLine_enabled = 1
" Set the characters for the indentation line, with a default value of '|'
let g:indentLine_char = '¦'
" Make the plugin run properly
let g:indentLine_conceallevel = 2


" Configure the NERDTree plugin mapping button
" Automatically open NERDTree after opening the file
autocmd VimEnter * NERDTree
" Key F2: Map other tabs
map <F2> :NERDTreeMirror<CR>
" Key F3: Expand/shrink NERDTree
map <F3> :NERDTreeToggle<CR>
" Key f: In the NERDTree window, jump the cursor to the currently open file.
map f :NERDTreeFind<CR>
" Key 1: Switch to the previous tab
map 1 :tabp<CR>
" Key 2: Switch to the next tab
map 2 :tabn<CR>

