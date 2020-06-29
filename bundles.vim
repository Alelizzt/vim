" Required:
if has('vim_starting')
  set nocompatible
  set sessionoptions-=options
endif

" Plug Groups
" List only the plugin groups you will use
if !exists('g:bundle_groups')
  let g:bundle_groups=['general', 'devel', 'languages', 'colorscheme']
endif

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
