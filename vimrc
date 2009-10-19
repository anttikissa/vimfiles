cd c:/work/dippa/tex

colorscheme antti

set makeprg=mk.cmd

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set list
set listchars=tab:·\ ,extends:»,precedes:«

set guifont=Inconsolata:h11
set guioptions+=ab
set guioptions-=tT

set lines=60 columns=153
winpos 600 0

set backspace=indent,eol,start
set textwidth=120

set ruler

filetype on
filetype plugin on

syntax on

set autoindent

" CTRL-Tab is Next window
noremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
cnoremap <C-Tab> <C-C><C-W>w
onoremap <C-Tab> <C-C><C-W>w

" CTRL-Shift-Tab is Previous window
noremap <C-S-Tab> <C-W>W
inoremap <C-S-Tab> <C-O><C-W>W
cnoremap <C-S-Tab> <C-C><C-W>W
onoremap <C-S-Tab> <C-C><C-W>W

" CTRL-F4 is Close window
noremap <C-F4> <C-W>c
inoremap <C-F4> <C-O><C-W>c
cnoremap <C-F4> <C-C><C-W>c
onoremap <C-F4> <C-C><C-W>c

nnoremap <silent> <F8> :TlistToggle<CR>

" CTRL-Z is :shell
noremap <C-Z> :shell
inoremap <C-Z> <C-O>:shell

let tlist_tex_settings   = 'latex;s:sections;g:graphics;l:labels'
let tlist_make_settings  = 'make;m:makros;t:targets'

