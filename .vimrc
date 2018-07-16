set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mhinz/vim-signify'
Plugin 'ervandew/supertab'
Plugin 'romainl/flattened'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-sensible'
Plugin 'sheerun/vim-polyglot'

call vundle#end()
filetype plugin indent on

syntax on
set hidden
set hlsearch
set nu
set showmatch
set ignorecase
set smartcase
set wildmode=list:longest,full
set whichwrap=b,s,h,l,<,>,[,]
set gdefault
set wildignore+=*\\tmp\\*,*.swp,*.class,*.zip,*.exe,*\\.git\\*,*\\.hg\\*,*\\.svn\\*,*\\out\\*,*\\build\\*,*.log,*.idea,*\\reports\\*
set cursorline
set cursorcolumn
set completeopt=longest,menuone
set shiftwidth=4
set expandtab 
set tabstop=4
set softtabstop=4
set pastetoggle=<F12>

colorscheme flattened_dark
set guioptions-=L
set guioptions-=r

nnoremap ; :
nnoremap <C-J> <C-w>j
nnoremap <C-K> <C-w>k
nnoremap <C-L> <C-w>l
nnoremap <C-H> <C-w>h
vnoremap < <gv
vnoremap > >gv

let mapleader = ','

nnoremap <silent> <leader>/ :nohlsearch<CR>
nnoremap <Leader>. :bp<CR>
nnoremap <Leader>, :bn<CR>
nnoremap <Leader>d :bn<bar>bd #<CR>
nnoremap <leader>m :make<CR>
nnoremap <leader>l :!pdflatex % && evince %:r.pdf<CR>
nnoremap <leader>f :CtrlPCurWD<CR>
nnoremap <leader>g :CtrlPMRUFiles<CR>
nnoremap <leader>t :Explore<CR>

let NERDTreeShowBookmarks=1
let g:NERDTreeWinSize = 40
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let g:SuperTabClosePreviewOnPopupClose = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_by_filename = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_alt_sep = ''
