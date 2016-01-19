" Environment :
set nocompatible " must be first line
filetype off

" Vundle setup
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'mhinz/vim-signify'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'othree/vim-autocomplpop'
Plugin 'eparreno/vim-l9'
Plugin 'altercation/vim-colors-solarized'
Plugin 'terryma/vim-multiple-cursors'

call vundle#end()
filetype plugin indent on " Automatically detect file types.

" General
set hidden  " allow hidden buffers instead of just closing them
syntax on   " syntax highlighting
set mouse=a " automatically enable mouse usage
set shortmess+=filmnrxoOtT " abbrev. of messages (avoids 'hit enter')
set history=1000           " Store a ton of history (default is 20)

" Setting up our backups and directories:
set backup
set backupdir=$HOME/.vim/backup//
set directory=$HOME/.vim/swap//
set viewdir=$HOME/.vim/views//

" Creating directories if they don't exist
silent execute '!mkdir -p $HOME/.vim/backup'
silent execute '!mkdir -p $HOME/.vim/swap'
silent execute '!mkdir -p $HOME/.vim/views'

" Key (re)Mappings
let mapleader = ','

" make
noremap <leader>m :make<CR>

" make and display a latex pdf
noremap <leader>p :!pdflatex % && evince %:r.pdf<CR>

" session quit shortcut to save current session
nmap <leader>s <ESC>:mksession! ./.session.vim<CR>

" if we enter vim in a directory with a saved session, then load it
function! RestoreSession()
  if argc() == 0 "vim called without arguments
    if filereadable(expand("./.session.vim"))
        execute 'source ./.session.vim'
    end
  end
endfunction
autocmd VimEnter * call RestoreSession()

" Hide scrollbars
set guioptions-=L
set guioptions-=r

" Vim UI
set background=dark             " Assume a dark background
set t_Co=256                    " makes terminal use full colors
colorscheme solarized
set showmode                   	" display the current mode
set laststatus=2

set nu							" Line numbers on
set showmatch					" show matching brackets/parenthesis
set incsearch					" find as you type search
set hlsearch					" highlight search terms
set ignorecase					" case insensitive search
set smartcase					" case sensitive when uc present
set wildmenu					" show list instead of just completing
set wildmode=list:longest,full	" command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]	" backspace and cursor keys wrap to
set scrolljump=5 				" lines to scroll when cursor leaves screen
set foldenable  				" auto fold code
set gdefault					" the /g flag on :s substitutions by default

" Formatting
set autoindent                 	" indent at the same level of the previous line
set shiftwidth=4               	" use indents of 4 spaces
set expandtab 	  	     		" tabs are spaces, not tabs
set tabstop=4 					" an indentation every four columns
set softtabstop=4 				" let backspace delete indent
set matchpairs+=<:>            	" match, to be used with % 
set pastetoggle=<F12>          	" pastetoggle (sane indentation on pastes)

" Making it so ; works like : for commands. Saves typing and eliminates :W style typos due to lazy holding shift.
nnoremap ; :

" Easier moving in tabs and windows
nnoremap <C-J> <C-w>j
nnoremap <C-K> <C-w>k
nnoremap <C-L> <C-w>l
nnoremap <C-H> <C-w>h

" The following two lines conflict with moving to top and bottom of the screen
" If you prefer that functionality, comment them out.
map <S-H> gT          
map <S-L> gt

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" Clearing highlighted search
nmap <silent> <leader>/ :nohlsearch<CR>

nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
nnoremap <Leader>. :bp<CR>
nnoremap <Leader>, :bn<CR>

" Shortcuts
" Change Working Directory to that of the current file
cmap cwd lcd %:p:h
cmap cd. lcd %:p:h

" visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv 

" Fix home and end keybindings for screen, particularly on mac
" - for some reason this fixes the arrow keys too. huh.
map [F $
imap [F $
map [H g0
imap [H g0

" For when you forget to sudo.. Really Write the file.
cmap w!! w !sudo tee % >/dev/null

" Fix bg color of SignColumn for signify plugin
highlight SignColumn ctermbg=Black

" CtrlP
nnoremap <leader>f :CtrlP<CR>

" Tagbar
nnoremap <leader>o :TagbarToggle<CR>

" Airline font
let g:airline_powerline_fonts = 1

" NerdTree
map <leader>t :NERDTreeToggle<CR>

let NERDTreeShowBookmarks=1
let g:NERDTreeWinSize = 40
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
