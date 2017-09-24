set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'micha/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
Plugin 'craigemery/vim-autotag'
Plugin 'majutsushi/tagbar'
Plugin 'Shougo/neocomplete'
Plugin 'vim-syntastic/syntastic'
Plugin 'Townk/vim-autoclose'
Plugin 'gorkunov/smartpairs.vim'
" git support
Plugin 'tpope/vim-fugitive'
" Plugin 'junegunn/fzf'
" Plugin 'junegunn/fzf.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-commentary'
Plugin 'mileszs/ack.vim'

call vundle#end()            " required
filetype plugin indent on    " required

let mapleader = ","
let g:mapleader = ","
map <leader>g :Ack 

" Gruvbox theme
set t_Co=256
syntax enable
let g:gruvbox_termcolors=16
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'

" Neocomplete enable
let g:neocomplete#enable_at_startup = 1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Key mapping "
map <leader>n :NERDTreeToggle /home/dorbaruch/Desktop/<CR>
map <leader>t :TagbarToggle<CR>

nnoremap <silent> <C-l> <c-w>l
nnoremap <silent> <C-h> <c-w>h
nnoremap <silent> <C-k> <c-w>k
nnoremap <silent> <C-j> <c-w>j
nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR>
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <leader>\ :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" General "
" Show linenumbers "
set number
set ruler

" set Proper Tabs "
set tabstop=4
set showmatch
set smarttab
set shiftwidth=4
set expandtab

" Always display the status line
" set laststatus=2

" Enable highlighting of the current line
" set cursorline

" NERDTree Config "
" let NERDTreeShowHidden=1
"
" Airline Config "
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1 
let g:airline_theme='deus'
" let g:airline#extensions#tabline#enabled = 1
" let g:hybrid_custom_term_colors = 1
" let g:hybrid_reduced_contrast = 1
set laststatus=2

if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif


set number
set relativenumber

set noswapfile
