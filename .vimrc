
""Deim Package Manager
if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein.vim

call dein#begin(expand('~/.cache/dein'))
call dein#add('Shougo/neocomplete.vim')
call dein#add('juanedi/predawn.vim')
call dein#add('tomasr/molokai')
call dein#add('ervandew/supertab')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('scrooloose/nerdtree')
call dein#end()

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on

" Color scheme:
colorscheme predawn
"colorscheme molokai

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

" Panel resizing
"noremap <C-Left> <C-W>-<C-W>-
"noremap <C-Right> <C-W>+<C-W>+
"noremap <C-Down> <C-W><<C-W><
"noremap <C-Up> <C-W>><C-W>>

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

" Disable expandtab for makefiles
"autocmd FileType make setlocal noexpandtab

"I prefer the new Tagbar plugin
"let g:tagbar_sort = 0 " Disable alphabetical sort
"map <F4> :TagbarToggle<CR>

"Rainbow Parenthesis
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces
"au Syntax * RainbowParenthesesLoadChevrons
"


" NERDTree browser
map <F3> :NERDTreeToggle<CR>

" Minibuf Explorer
"map <F5> :MiniBufExplorer<CR>
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1 

" Run Make
"map <F6> :make<CR>

" Show error window
"map <F6> :cwindow<CR>


" Helper for errormarker
"let &errorformat="%f:%l:%c: %t%*[^:]:%m,%f:%l: %t%*[^:]:%m," . &errorformat 

" go
"au BufRead,BufNewFile *.go setfiletype go
" scala
"au BufRead,BufNewFile *.scala setfiletype scala

" recognize filetypes and set indent and 
" load plugins accordingly
filetype plugin on
filetype indent on

" this actually does something somewhat useful
" it toggles comments, but not in a very clever fashion
"au FileType python,perl,sh,bash,mutt vmap <F7> :call PyTestCommentRegion("## ")<CR>
"au FileType c,d,cpp,css,php vmap <F7> :call PyTestCommentRegion("/** ", " **/")<CR>
"au FileType html vmap <F7> :call PyTestCommentRegion("<!---  ", " -->")<CR>
"au FileType xml vmap <F7> :call PyTestCommentRegion("<!---  ", " -->")<CR>
"au FileType ant vmap <F7> :call PyTestCommentRegion("<!---  ", " -->")<CR>
"au FileType java,scala vmap <F7> :call PyTestCommentRegion("/// ")<CR>
"au FileType tex  vmap <F7> :call PyTestCommentRegion("%% ")<CR>
"au FileType maude vmap <F7> :call PyTestCommentRegion("---- ")<CR>
"au Filetype vim vmap <f7> :call pytestcommentRegion('" ')<CR>
"au Filetype go vmap <f7> :call pytestcommentRegion("/// ")<CR>

" Supertab, set omnicomplete as default
"let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"autocmd FileType c set omnifunc=ccomplete#Complete
"set omnifunc=syntaxcomplete#Complete

" Enable Tagbar support for Scala
"filetype plugin indent on "detects filetypes, plugins and indentexpr
"let g:tagbar_type_scala = {
"    \ 'ctagstype' : 'Scala',
"    \ 'kinds'     : [
"        \ 'p:packages:1',
"        \ 'V:values',
"        \ 'v:variables',
"        \ 'T:types',
"        \ 't:traits',
"        \ 'o:objects',
"        \ 'a:aclasses',
"        \ 'c:classes',
"        \ 'r:cclasses',
"        \ 'm:methods'
"    \ ]
"\ }

"Pathogen
"execute pathogen#infect()

"Ctrl-P
"set runtimepath^=~/.vim/bundle/ctrlp.vim
":let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py|\.class'



