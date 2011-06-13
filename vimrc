set tabstop=4
set shiftwidth=4
set softtabstop=4
" set expandtab

set modeline
set modelines=5

set number

set list
set listchars=tab:·\ ,extends:»,precedes:«

set formatoptions-=t

set backspace=indent,eol,start

set textwidth=80

set ruler
set laststatus=2

filetype on
filetype plugin on

syntax on

" It would make more sense to create a color scheme for the terminal, but let's
" just do this.
hi LineNr ctermfg=grey
hi SpecialKey ctermfg=grey
hi MatchParen cterm=underline ctermbg=0 ctermfg=red
" hi Normal ctermfg=7

au BufNewFile,BufRead *.less set filetype=less sw=2 sts=2 et
au BufNewFile,BufRead *.haml set sw=2 sts=2 et

au! BufRead,BufNewFile *.json setfiletype json 
au BufNewFile,BufRead *.txt set expandtab
au BufNewFile,BufRead *.tex set expandtab
au BufNewFile,BufRead *.bib set expandtab

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

" let tlist_tex_settings   = 'latex;s:sections;g:graphics;l:labels'
" let tlist_make_settings  = 'make;m:makros;t:targets'

