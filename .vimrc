"""""" .vimrc file """""
" Use vim settings
" PUT THIS FIRST
set nocompatible

" Load vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
   execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
   autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif

" Start Plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/vim-plug'
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
call plug#end()
" End Plugins

syntax enable                   " enable syntax highlighting
set foldmethod=syntax           " enable folding (wrapping text)

set background=dark             " I like dark themes so...
colorscheme solarized           " Found this colorscheme and I liked it.
" hide buffers without having to write on undo changes first
set hidden
set wrap                        " do wrap lines by default
set backspace=indent,eol,start  " allow backspacing everything in insert mode
" indenting options
set shiftwidth=4                " number of spaces to use for autoindenting
set tabstop=4                   " a tab is four spaces
set autoindent                  " always set autoindenting on
set cindent                     " indents for C like files
set copyindent                  " copy the previous indentation on autoindent
set smarttab                    " insert tabs on the start of a line according
                                "   to shiftwidth, not tabstop
set expandtab                   " Expand tabs into spaces
set shiftround                  " use multiple of shiftwidth when indenting with '<'or'>'
set number                      " always show line numbers
set relativenumber              " relative line numbers on the left
set showmatch                   " set show matching parenthesis
set matchtime=5                 " Show matching brackets for 0.5 seconds
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case iff search pattern is lowercase
set cursorline                  " hightlights current cursor
set cursorcolumn                " Useful for testing indenting alignment quick
set colorcolumn=80              " vertical line at the 80 char position
set scrolloff=4                 " keep 4 lines off the screen edgeson scrolling
set hlsearch                    " highlight search terms
set incsearch                   " show search matches as you type
set mouse=a                     " enable mouse if terminal emulator supports
set fileformats="unix,dos,mac"
set formatoptions+=1            " When wrapping paragraphs, don't end lines
set history=1000                " remember more commands and search history
set undolevels=1000             " use many muchos levels of undo
set title                       " change the terminal's title
set ls=2                        " Show filename at bottom
set wildmenu                    " better menu autocompletion
set wildignore=*.swp,*.bak,*.pyc,*.class

let t_ZH="\e3m"
let t_ZR="\[23m"
highlight Comment cterm=italic

" Showing trailing and non-printable characters
set showbreak=↪\ 
set listchars=tab:│·,trail:·,eol:↲,nbsp:␣,extends:›,precedes:‹
set list
" TODO Add colors for guifg
hi SpecialKey ctermfg=0
hi NonText ctermfg=0

" for gods sake we have git now
set nobackup
set noswapfile
