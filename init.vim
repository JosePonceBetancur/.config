source $HOME/.config/nvim/vim-plug/plugins.vim

" About the theme used in the status bar
let g:airline_theme='base16_gruvbox_dark_hard'

"Using gruvbox as default theme for Neovim
"autocmd vimenter * ++nested colorscheme gruvbox

let g:gruvbox_bold = 1
let g:gruvbox_transparent_bg = 1
let g:gruvbox_undercurl = 1
let g:gruvbox_contrast_dark = "hard"
colorscheme gruvbox

    " Workaround for creating transparent bg
    autocmd SourcePost * highlight Normal     ctermbg=NONE guibg=NONE
            \ |    highlight LineNr     ctermbg=NONE guibg=NONE
            \ |    highlight SignColumn ctermbg=NONE guibg=NONE

" Now, fundamental options!
:set backspace=indent,eol,start
:set scrolloff=7 
:set number
:set expandtab
:set shiftwidth=4
:set hidden
:set relativenumber
:set mouse=a
:set tabstop=4
:set numberwidth=1
:set showcmd
:set ruler
:set cursorline
:set encoding=utf-8
:set showmatch
:set termguicolors
:set clipboard=unnamed
:set wildmode=longest,list
:set autoindent
:set smartindent
:set nowrap
filetype plugin indent on
:set fileformat=unix
:set smarttab

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter


" Turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste

" Set cursor line color on visual mode
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END

if &term =~ "screen"
  autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
  autocmd VimLeave * silent!  exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
endif


set exrc

"" idk
" Suppress appending <PasteStart> and <PasteEnd> when pasting
set t_BE=

set nosc noru nosm
" Don't redraw while executing macros (good performance config)
set lazyredraw
