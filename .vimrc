" Environment :
set nocompatible " must be first line
filetype off

" Vundle setup
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'mhinz/vim-signify'
Plugin 'ervandew/supertab'
Plugin 'romainl/flattened'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-sensible'

call vundle#end()
filetype plugin indent on " Automatically detect file types.

set hlsearch
set nu							" Line numbers on
set showmatch					" show matching brackets/parenthesis
set ignorecase					" case insensitive search
set smartcase					" case sensitive when uc present
set wildmode=list:longest,full	" command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]	" backspace and cursor keys wrap to
set gdefault					" the /g flag on :s substitutions by default
set wildignore+=*\\tmp\\*,*.swp,*.class,*.zip,*.exe,*\\.git\\*,*\\.hg\\*,*\\.svn\\*,*\\out\\*,*\\build\\*,*.log,*.idea,*\\reports\\*
set cursorline
set cursorcolumn
set completeopt=longest,menuone
set shiftwidth=4               	" use indents of 4 spaces
set expandtab 	  	     		" tabs are spaces, not tabs
set tabstop=4 					" an indentation every four columns
set softtabstop=4 				" let backspace delete indent
set pastetoggle=<F12>          	" pastetoggle (sane indentation on pastes)

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
nnoremap <leader>o :TagbarToggle<CR>
nnoremap <leader>t :NERDTreeToggle<CR>

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
