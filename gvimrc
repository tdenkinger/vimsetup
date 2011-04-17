" Example Vim graphical configuration.
" Copy to ~/.gvimrc or ~/_gvimrc.

set guifont=Bitstream\ Vera\ Sans\ Mono:h11            " Font family and font size.
set antialias                     " MacVim: smooth fonts.
set encoding=utf-8                " Use UTF-8 everywhere.
set guioptions-=T                 " Hide toolbar.
set lines=60 columns=140          " Window dimensions.

" Uncomment to use.
" set guioptions-=r                 " Don't show right scrollbar

if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <C-p> <Plug>PeepOpen
end
