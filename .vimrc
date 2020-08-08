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
Plug 'junegunn/vim-plug' " Plugin manager
Plug 'tpope/vim-fugitive'   " Git Wrapper
Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'chriskempson/base16-vim'
Plug 'kien/ctrlp.vim'
call plug#end()
" End Plugins

""" Base16 customizations
" Using base16-shell for color theme managment
if filereadable(expand("~/.vim/colorscheme.vim"))
  let base16colorspace=256
  source ~/.vim/colorscheme.vim
endif

function! s:base16_customize() abort
  " Arguments: group, guifg, guibg, ctermfg, ctermbg, attr, guisp
  call Base16hi("MatchParen", g:base16_gui05, g:base16_gui03, g:base16_cterm05, g:base16_cterm03, "bold,italic", "")
  call Base16hi("Comment" , "", "", "", "", "italic", "")
  call Base16hi("SpellBad" , "", "", "", "none", "bold,underline", "")
  call Base16hi("SpellCap" , "", "", "", "none", "bold,undercurl", "")
endfunction

" undercurl support
let &t_Cs = "\e[4:3m"
let &t_Ce = "\e[4:0m"

augroup on_change_colorschema
  autocmd!
  autocmd ColorScheme * call s:base16_customize()
augroup END
""" End Base16 Customizations

syntax enable                   " enable syntax highlighting
set foldmethod=syntax           " enable folding (wrapping text)

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

" Showing trailing and non-printable characters
set showbreak=↪\ 
set listchars=tab:│·,trail:·,eol:↲,nbsp:␣,extends:›,precedes:‹
set list

"" cool binds
map <leader>h :noh<CR>

""" vim ALE stuff"""
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
""" End Vim Ale

""" vim coc stuff
" always show signcolumns
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
""" End vim coc

" for gods sake we have git now
set nobackup
set noswapfile
