" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Acces to git commands
    Plug 'tpope/vim-fugitive'
    " Hub to fugitive
    Plug 'tpope/vim-rhubarb'
    " Vim status bar 
    Plug 'vim-airline/vim-airline'
    "Themes for the status bar
    Plug 'vim-airline/vim-airline-themes'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    "Theme gruvbox for Neovim
    Plug 'morhetz/gruvbox'

call plug#end()


