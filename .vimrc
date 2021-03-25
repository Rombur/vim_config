" Set no compatible with vi.
set nocompatible
" set the runtime path to include Vundle and initialize Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'johnsyweb/vim-makeshift'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'majutsushi/tagbar'
Plugin 'ycm-core/youcompleteme'

" All Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" Use syntax highlighting.
syntax on

" Load indentation rules and plugins according to the detected filetype.
filetype plugin indent on

" Change the colorscheme.
:colorscheme evening

" Jump to the last position when reopening a file.
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Show (partial) command in status line.
set showcmd

" Show matching brackets.
set showmatch

" Do case insensitive matching.
set ignorecase

" Do smart case matching, i.e. recognize uppercase if it's specified.
set smartcase

" Automatically save before commands lie :next and :make
set autowrite

" Hide buffers when they are abandoned.
set hidden

" Enable mouse usage (all modes).
set mouse=a

" Do smart indent in C++ file.
set smartindent

" Do correct indent for lambda functions
set cindent cino=j1,(0,ws,Ws

" Tabstops are 2 spaces.
set tabstop=2
set shiftwidth=2

" Make command line two lines high
set ch=2

" Allow backspacing over indent, eol, and the start of an insert.
set backspace=2

" Tell VIM to always put a status line in, even if there is only one window
set laststatus=2

" Show the current mode
set showmode

" Show the line in the file
set ruler

" Hide the mouse pointer while typing
set mousehide

" Keep some stuff in the history
set history=100

" When the pafe starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom
set scrolloff=8

" Allow the cursor to "invalid" places
set virtualedit=all

" Make the command-line completion better
set wildmenu

" When completing by tag, show the whole tag, not just the function name
set showfulltag

" Set the textwidth to be 80 chars
set textwidth=80

" Turn tabs into spaces
set expandtab

" Add ignorance of whitespace to diff
set diffopt+=iwhite

" Enable search highlighting
set hlsearch

" Persistent undo
set undofile
" Folder where the undo histories are saved. The folder needs to exist.
set undodir=$HOME/.undo

" Allow to resize windows when using tmux
set ttymouse=xterm2

" Automatic folding
set foldmethod=syntax

" The Python syntax plugin does not provide fold markers
autocmd Filetype python set foldmethod=indent

" Do not fold by default when opening a file
set nofoldenable

" Makeshift tries the buildt file in the current directory before searching from
" the file directory.
let g:makeshift_use_pwd_first=1

" Open the TagBar on the left instead of the right.
let g:tagbar_left=1

" Do not ask for confimation when loading .ycm_extra_conf.py
let g:ycm_confirm_extra_conf=0

" Close the preview window once the string is complete.
let g:ycm_autoclose_preview_window_after_completion=1

" Remap <F2> in normal mode but forbid nested remap
:nnoremap <F2> :YcmDiags<CR>

" Remap <F3> in normal mode but forbid nested remap
:nnoremap <F3> :TagbarToggle<CR>

" Remap <F4> in normal mode but forbid nested remap
:nnoremap <F4> :ls<CR>:b<Space>

" Remap <F8> in normal mode but forbid nested remap
:nnoremap <F8> :set filetype=cuda<CR>

" Remap <F9> in normal mode but forbid nested remap
:nnoremap <F9> :botright cwindow<CR>

" Remap <F10> in normal mode but forbid nested remap
:nnoremap <F10> :cn<CR>

" Remap <F12> in normal mode but forbid nested remap
:nnoremap <F12> :wa<CR>:make<CR>

" Toggle paste option in insert map
set pastetoggle=<F5>

" Fix constant spelling mistakes can be used to make some shortcuts
iab hte      the
iab Hte      The
iab teh      the
iab Teh      The
iab het      the
iab Het      The
iab eht      the
iab Eht      The
iab htat     that
iab taht     that
iab Taht     That
iab alos     also
iab Alos     Also
iab aslo     also
iab Aslo     Also
iab becuase  because
iab Becuase  Because
iab bianry   binary
iab bianries binaries
iab Bianries Binaries
iab charcter character
iab Charcter Character
iab exmaple  example
iab Exmaple  Example
iab Exmaples Examples
iab exmaples examples
iab lenght   length
iab shoudl   should
iab Shoudl   Should
iab #i       #include
iab #d       #define
iab phton    photon
iab phtons   photons
iab Phton    Photon
iab Phtons   Photons

let fortran_free_source=1
let fortran_do_enddo=1

" au = autocommand

" Use spell checker as soon as a tex file is open
au BufNewFile,BufRead *.tex set spell

" Recognize SCons* as Scons file
au BufNewFile,BufRead SCons* set filetype=scons

" Recognize cuh as CUDA file
au BufNewFile,BufRead *.cuh set filetype=cuda

" Used for the templates
au BufNewFile * so ~/.vim/skeleton.vim

" Use clang-format on save
let g:clang_format_fallback_style='none'
function! Formatonsave()
  let l:lines="all"
  py3f ~/.vim/clang-format.py
endfunction
autocmd BufWritePre *.h,*.hh,*.hpp,*.cc,*.cpp,*.cu,*.cuh call Formatonsave()
