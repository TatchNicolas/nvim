" Basic configurations
colo desert
set autoindent
set clipboard+=unnamedplus
set expandtab
set hls
set laststatus=2
set noswapfile
set number
set showmatch
set smartindent
set splitright

" Python Executables
let g:python_host_prog='/home/tatch/bin/neovim/py2/.venv/bin/python'
let g:python3_host_prog='/home/tatch/bin/neovim/py3/.venv/bin/python'

" Enable cursorline only for active file buffers
au BufEnter * setlocal cursorline
au BufLeave * setlocal nocursorline
au WinLeave * setlocal nocursorline
au TermOpen * setlocal nonumber norelativenumber

" Disable moving cursor with arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <up> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Open terminal
:command TV vnew  |term
:command TS new   |term
:command TT tabnew|term

" Switch to normal mode
imap jj <Esc>
tnoremap <Esc> <C-\><C-n>
tnoremap <silent> jj <C-\><C-n>

" Some tweak before loading plugins
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/tatch/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/tatch/.cache/dein')
  call dein#begin('/home/tatch/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/tatch/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('Shougo/deoplete.nvim')

  " Load plugins specified in TOML files
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
 call dein#install()
endif

"End dein Scripts-------------------------
