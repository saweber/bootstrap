"VIM Configuration

" add vim features
set nocompatible

" activate plugins
execute pathogen#infect()

" Display
set title			" update title window of terminal
set number			" display line numbers
set ruler			" display cursor position
set wrap			" wrap lines

set scrolloff=3			"display at least 3 lines around cursor
set guioptions=T		"enable toolbar

" search
set ignorecase			" ignore case when searching
set smartcase			" if there is upper case make case sensitive
set incsearch			" highlight search results when typing
set hlsearch			" highlight search results

" Beep
set visualbell			" prevent beeping
set noerrorbells		" prevent beeping

" Backspace behaves as expected
set backspace=indent,eol,start

" Hide buffer instead of abandoning when switching
set hidden

" Enable syntax highlighting
syntax enable

" Solarized Dark
set background=dark
colorscheme solarized

" Fonts
set antialias

" Enable file specific behavior like syntax highlighting and indentation
filetype on
filetype plugin on
filetype indent on

" no direction keys
noremap <up> <nop>
inoremap <up> <nop>

noremap <down> <nop>
inoremap <down> <nop>

noremap <left> <nop>
noremap <right> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" nerdtree
autocmd vimenter * NERDTree
