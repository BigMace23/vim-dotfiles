" *****************************************************************************
" ****  VIM STARTUP 
" *****************************************************************************
" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible

" Disable the default Vim startup message.
set shortmess+=I

" Enable the use of plugins
filetype plugin on

" Allow new vimrc settings to be automatically applied upon saving
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

" *****************************************************************************
" ****  VISUAL PREFERENCES 
" *****************************************************************************
" Turn on syntax highlighting.
syntax on

" Show line numbers. Relative number allows quick jumping to nearby lines
set number
set relativenumber

" Always show the status line at the bottom, even if you only have one window
" open.
set laststatus=2

" Define the colorscheme
packadd! onedark.vim
packadd! gruvbox.vim
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark

" Enable use of transparent background in vim
"hi! Normal ctermbg=NONE guibg=NONE
"hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

" Change the default characters shown for tabs and EOLs
set listchars=tab:▸\ ,eol:¬ 

" *****************************************************************************
" **** GENERAL PREFERENCES/TOOLS  
" *****************************************************************************
" Define text width to 79 characters consistent with python PEP8
set textwidth=79

" Set up line breaks and soft-wrapping
set wrap linebreak nolist

" Set format options for hard line wrapping... +t will insert an end of line
" once you hit the specified text width as you type.
set formatoptions+=t

" Allow backspace over all text (instead of stopping at the insert point)
set backspace=indent,eol,start

" Allow buffers to be hidden without writing changes
set hidden

" Make search case-insensitive for all lower-case, and case-sensitive for any
" upper case
set ignorecase
set smartcase
 
" Set search highlight
set hls

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a

" Set the default number format as decimal
set nrformats=

" Use four spaces instead of tab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

" *****************************************************************************
" ****  KEY REMAPS 
" *****************************************************************************
" Remap the default leader from \ to ,
let mapleader = ","

" Remap the 'jk' key combination to provide another way to escape
imap jk <Esc>

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Shortcut to edit vimrc file
nmap <leader>v :tabedit $MYVIMRC<CR>

" Key remaps to scroll through multiple files loaded into buffer
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" Define the %% shortcut for simpler expansion of the active file directory
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Shortcut to show hidden characters in file
nmap <leader>l :set list!<CR>

" Shortcut to turn spellcheck on and off
nmap <leader>s :set spell!<CR>

" Allow window movement to use Ctrl-hjkl instead of Ctrl-w hjkl
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l



