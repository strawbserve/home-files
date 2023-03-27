" load the system vimrc
source /etc/vimrc

set t_Co=256
syntax on
try
	colorscheme mycolors
catch
	colorscheme desert
endtry

highlight Cursor ctermfg=black

" better colors for vimdiff
highlight DiffAdd    ctermfg=Green ctermbg=DarkGray
highlight DiffDelete ctermfg=Red ctermbg=DarkGray
highlight DiffChange ctermfg=Yellow ctermbg=DarkGray
highlight DiffText   ctermfg=DarkGray ctermbg=Yellow

" let php_folding = 2
" set foldlevel=99
" au BufRead * normal zR

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

set autoindent
set showmatch
set ruler
set nohls
set incsearch

" https://sanctum.geek.nz/arabesque/vim-filename-completion/
set wildmenu
set wildmode=longest,list

map <c-h> <c-w>h<c-w>_
map <c-j> <c-w>j<c-w>_
map <c-k> <c-w>k<c-w>_
map <c-l> <c-w>l<c-w>_

" syntax highlighting for twig
au BufRead,BufNewFile *.twig set filetype=htmljinja

" this makes the highlighting keep up when jumping around
au BufEnter * :syntax sync fromstart
