" GENERAL
set cursorline

" Usa el registro '*' o '+' si esta habilitado para hacer copia
set clipboard=unnamed
if has('unnamedplus')|set clipboard+=unnamedplus|endif

" Habilitar raton
if has("mouse")
    set mouse=a
    set mousehide
    set mousemodel=popup
    if !has('nvim')
        set ttymouse=xterm2
    endif
endif

" Configuraciones del editor
set laststatus=2

set number
set numberwidth=1
set nu
set relativenumber
set showcmd
set ruler
set showmatch

filetype on

syntax enable
set encoding=utf-8
set sw=4

set shiftwidth=4
set expandtab
set autoindent

colorscheme monokai

