
""Deim Package Manager
if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein.vim

call dein#begin(expand('~/.cache/dein'))
call dein#add('juanedi/predawn.vim')
call dein#add('tomasr/molokai')
call dein#add('ervandew/supertab')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('jlanzarotta/bufexplorer')
"call dein#add('vim-scripts/buftabs')
call dein#add('ap/vim-buftabline')
call dein#end()

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on

" Color scheme:
colorscheme predawn
"colorscheme molokai

" BufTabs
noremap <C-h> :bprev<CR>
noremap <C-l> :bnext<CR>

" Line numbers
set number

" Disable wrapping
set nowrap

" Nicer tab completion of path commands
set wildmode=longest,list,full
set wildmenu

" Add horizontal scrollbar
" set guioptions+=b

"Highlight search matches
set hlsearch

"Highlight Tabs and spaces at the end of a line
set listchars=tab:>~,nbsp:_,trail:.
set list

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

set nobackup
set noswapfile

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

nnoremap j gj
nnoremap k gk

"width column
"highlight ColorColumn guibg=7
highlight ColorColumn ctermbg=7
set colorcolumn=81

" tell it to use an undo file
set undofile

" set a directory to store the undo history
set undodir=/home/chris/.vimundo/

"Colors
set t_Co=256

" highlight the line the cursor is on
set cursorline

" Syntax coloring
syntax on

" Spell checking
set spell spelllang=en_ca
set nospell

" Hide GVim toolbar
set guioptions-=T

" Hide scrollbars
set guioptions-=l
set guioptions-=r
set guioptions-=b

" GVim default font
set guifont=Liberation\ Mono\ 9

" Toggle line numbers and fold column for easy copying:
" F2 toggles line numbers
noremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" Set current dur to that of open filoe
" set autochdir
set nocompatible
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
" Makes tabs == 4 spaces
set expandtab


" Mouse click support:
set mouse=a
set ttymouse=xterm2

"I prefer the new Tagbar plugin
"let g:tagbar_sort = 0 " Disable alphabetical sort
"map <F4> :TagbarToggle<CR>

" NERDTree browser
map <F3> :NERDTreeToggle<CR>

" recognize filetypes and set indent and 
" load plugins accordingly
filetype plugin on
filetype indent on

