syntax enable
"let g:solarized_termcolors=256
"set background=dark
"colorscheme solarized
 
map <Space> <leader>
 
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap <C-g> <Esc>/[)}"'\]>]<CR>:nohl<CR>a
 
nnoremap <C-h> ^
nnoremap <C-l> $
nnoremap <C-j> 5j
nnoremap <C-k> 5k
nnoremap ; :
 
au BufRead,BufEnter,BufNewFile *.txt,*.md setf filetype=text
au FileType text hi Italics cterm=italic gui=italic
"au FileType text inoremap <Space><Space> .<Space>
"au FileType text syn match Italics "\/[^*]\+\/" contains=Italics "Legacy
au FileType text syn match Italics "_[^*]\+_" contains=Italics
au FileType text hi Line ctermfg=100 cterm=bold gui=bold
au FileType text syn match Line "--"
au FileType text hi Arrow ctermfg=172 cterm=bold gui=bold
au FileType text syn match Arrow "->"
au FileType text syn match Arrow "<-"
au FileType text hi Parens ctermfg=170
au FileType text syn match Parens "("
au FileType text syn match Parens ")"
au FileType text hi Quotes ctermfg=209
au FileType text syn match Quotes "\""
au FileType text hi Bullet ctermfg=175 cterm=bold gui=bold
au FileType text syn match Bullet "- "
au FileType text hi Item ctermfg=red
au FileType text syn match Item "\(\- \)\@<=[^*]\+:"
au FileType text hi Asterisks NONE
au FileType text hi AsteriskBold ctermfg=Gray cterm=bold gui=bold
au FileType text syn match Asterisks "\*" conceal
au FileType text syn match AsteriskBold "\*[^*]\+\*" contains=Asterisks
au FileType text hi Title ctermfg=blue cterm=bold gui=bold
au FileType text syn match Title "^#[^*]\+" contains=Asterisks
au FileType text hi Subtitle ctermfg=57 cterm=bold gui=bold
au FileType text syn match Subtitle "^##[^*]\+" contains=Asterisks
au FileType text hi Strike ctermbg=darkred ctermfg=blue
au FileType text syn match Strike "\~.*\~"
noh
 
set mouse=a
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=indent,eol,start
set showcmd " show command at bottom
set wildmenu " visual autocomplete for command menu
set wildmode=list:longest
set cursorline " show cursor line
set cursorcolumn
set synmaxcol=200
set incsearch " search as characters are entered
set hlsearch " highlight matches
set colorcolumn=120
set autoindent
set smartindent
set number
set lazyredraw " redraw only when we need to
set showmatch " shows matching [({})]
set shellpipe=>
 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
 
let g:ack_use_dispatch=0
let maplocalleader = "\\"
 
map <C-n> :NERDTreeToggle<CR>
nmap <C-t> :TagbarToggle<CR>
 
set nocompatible              " be iMproved, required
filetype off                  " required
 
" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"let g:org_agenda_files=['~/Documents/fun/todo.org']
 
"set concealcursor=n
"set conceallevel=3
 
map <leader>vimrc :tabe ~/.vimrc<cr>
augroup reload_vimrc
  au!
  au BufWritePost $MYVIMRC source $MYVIMRC
augroup END
