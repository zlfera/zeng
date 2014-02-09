set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
"Bundle 'kien/ctrlp.vim'
Bundle 'mattn/emmet-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'othree/html5.vim'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'lepture/vim-css'
"Bundle 'Shougo/neocomplcache.vim'
"Bundle 'Shougo/neosnippet.vim'
"Bundle 'Shougo/neosnippet-snippets'
Bundle 'ervandew/supertab'
Bundle 'slim-template/vim-slim'


"let g:neosnippet#enable_snipmate_compatibility = 1

"let g:neocomplcache_enable_at_startup=1


""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
colorscheme desert
set number
set nobackup
set noswapfile
set wildmenu
set autowrite
set smartcase
set scrolloff=3
set backspace=2
set expandtab
set shiftwidth=2
set cursorline
set softtabstop=2
set tabstop=8
set shortmess=atI
map <F12> :NERDTreeToggle<CR>
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i

inoremap < <><ESC>i





let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '✗'
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_loc_list_height = 5
let g:syntastic_enable_highlighting = 1
"let g:syntastic_mode_map = { 'passive_filetypes': ['scss', 'slim'] }



set laststatus=2
set ttimeoutlen=50
let g:airline_symbols = {}


"let g:airline_left_sep=' '
"let g:airline_right_sep=' '
"let g:airline_enable_fugitive=1
"let g:airline_section_b='%{strftime("%c")}'
let g:airline_section_c="%t"
let g:airline_section_x="%y"
"let g:airline_section_y = 'BN: %{bufnr("%")}'


let g:airline_left_sep = '→'
let g:airline_right_sep='←'
let g:airline_symbols.linenr='L'
let g:airline_symbols.branch='┴┼'
let g:airline_symbols.paste='β'
let g:airline_symbols.whitespace='★☆'
let g:airline#extensions#whitespace#enabled=0



""""""""""

if has("cscope")
  set cst
  if filereadable("cscope.out")
      cs add cscope.out
  endif
endif