" GENERAL
if count(g:bundle_groups, 'general')
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'easymotion/vim-easymotion'
endif

" DESARROLLO
if count(g:bundle_groups, 'devel')
    if has ('nvim')
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugs' }
    else
        Plug 'Shoigo/deoplete.nvim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
    endif

    Plug 'scroolose/nerdtree'
endif

" COLORSHEME
if count(g:bundle_groups, 'colorscheme')
    Plug 'crusoexia/vim-monokai'
endif

call plug#end()
