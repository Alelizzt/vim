"
"    ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"    ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"    ██║   ██║██║██╔████╔██║██████╔╝██║     
"    ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"     ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"      ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"


call plug#begin('~/.vim/plugged')

" Temporal... cambia luego
if has('mac')
      Plug 'junegunn/vim-xmark'
endif

" Autocarga el VimPlug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Identificando la plataforma
silent function! OSX()
  return has('macunix')
endfunction
silent function! LINUX()
  return has('unix') && !has('macunix') && !has('win32unix')
endfunction
silent function! WINDOWS()
  return (has('win16') || has('win32') || has('win64'))
endfunction
silent function! GUI()
  return (has('gui_running'))
endfunction

" Multiplatform compatibility
if WINDOWS()
  " On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
  " across (heterogeneous) systems easier.
  set rtp=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif

source $HOME/.vim/bundles.vim
source $HOME/.vim/settings.vim
source $HOME/.vim/map.vim
source $HOME/.vim/plugins.vim
"source $HOME/.vim/functions.vim
"source $HOME/.vim/autocmd.vim
