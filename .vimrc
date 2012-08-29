"""""" .vimrc file """""
" Use vim settings
" PUT THIS FIRST
set nocompatible

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

" enable syntax highlighting
syntax enable

" I like dark themes so...
set background=dark

" Found this colorscheme and I liked it.
let g:solarized_termtrans=1
let g:solarized_visibility="low"
colorscheme solarized

" hide buffers without having to write on undo changes first
set hidden

" set nowrap						" don't wrap lines
set backspace=indent,eol,start
								" allow backspacing over everything in insert mode
" indenting options
set autoindent					" always set autoindenting on
set smartindent                 " indents for C like files
set copyindent					" copy the previous indentation on autoindenting
set shiftwidth=4				" number of spaces to use for autoindenting
set tabstop=4					" a tab is four spaces
set smarttab					" insert tabs on the start of a line according to
								"    shiftwidth, not tabstop
set shiftround					" use multiple of shiftwidth when indenting with '<' and '>'

set number						" always show line numbers
set showmatch					" set show matching parenthesis
set ignorecase					" ignore case when searching
set smartcase					" ignore case if search pattern is all lowercase,
								"    case-sensitive otherwise
set scrolloff=4					" keep 4 lines off the edges of the screen when scrolling
set virtualedit=all             " allow the cursor to go in to "invalid" places

set hlsearch					" highlight search terms
set incsearch					" show search matches as you type

set pastetoggle=<F2>            " when in insert mode, press <F2> to go to
								"    paste mode, where you can paste mass data
								"    that won't be autoindented
set mouse=a                     " enable using the mouse if terminal emulator
								"    supports it (xterm does and urxvt)
set fileformats="unix,dos,mac"
set formatoptions+=1            " When wrapping paragraphs, don't end lines


set history=1000				" remember more commands and search history
set undolevels=1000				" use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                       " change the terminal's title

" for gods sake we have git now
set nobackup
set noswapfile
