set tabstop=4
set shiftwidth=4
" set softtabstop=4
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

" Fix jslint plugin
let $JS_CMD='node'

" Necessary in Ubuntu, since /etc/vim/vimrc says 'syntax on', after which
" ftdetect scripts are loaded, and after that, ~/vimfiles/ is added to
" runtimepath (but files in ~/vimfiles/ftdetect are not loaded!). This forces
" loading scripts in ~/vimfiles/ftdetect. Complicated enough?
filetype off
filetype on
filetype plugin on

syntax on

" persistent undo (vim 7.3)
set undodir=~/vimfiles/.vimundo
set undofile
set undolevels=1000
set undoreload=10000

" Turns out, this sucks
" set autochdir

" It would make more sense to create a color scheme for the terminal, but let's
" just do this.
hi LineNr ctermfg=grey
hi SpecialKey ctermfg=grey
hi MatchParen cterm=underline ctermbg=0 ctermfg=red

color ir_black

" An incomplete list of things to fix so things won't look unreadable on OS X
" Lion terminal with IR_Black theme installed
hi SpellBad ctermbg=none ctermfg=red cterm=underline
hi ErrorMsg ctermbg=none ctermfg=red cterm=none
hi Error ctermbg=none ctermfg=red cterm=underline
hi WarningMsg ctermbg=none ctermfg=5
" TODO and lots of others, see :hi

" hi Normal ctermfg=7

au BufNewFile,BufRead *.less set filetype=less sw=2 sts=2 et
au BufNewFile,BufRead *.haml set sw=2 sts=2 et

au! BufRead,BufNewFile *.vs,*.fs,*.glsl set filetype=glsl 

au! BufRead,BufNewFile *.json setfiletype json 
au BufNewFile,BufRead *.txt set expandtab
au BufNewFile,BufRead *.tex set expandtab
au BufNewFile,BufRead *.bib set expandtab

au BufNewFile,BufRead *.txt set formatoptions-=a

" Automagical coffeescript compilation
au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!

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
