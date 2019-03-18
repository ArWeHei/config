"execute pathogen#infect()
"syntax on
"filetype plugin indent on
"
"set background=dark
"colorscheme solarized
"
"let mapleader = "\<Space>"
"inoremap jk <ESC>


execute pathogen#infect()
syntax on
filetype plugin indent on

set background=dark
set bs=2
set relativenumber
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

let mapleader = "\<Space>"
inoremap jk <ESC>

map <C-n> :NERDTreeToggle<CR>
nmap <leader>p <ESC>:w<CR>:!python3 % <CR>

" source $MYVIMRC reloads the saved $MYVIMRC
:nmap <Leader>s :source $MYVIMRC
" opens $MYVIMRC for editing, or use :tabedit $MYVIMRC
:nmap <Leader>v :tabe $MYVIMRC

set guifont=DejaVuSansMonoPowerline:h11

let &colorcolumn="80,".join(range(120,999),",")

if has("gui_running")
  colorscheme solarized
  set transparency=10
  highlight Cursor guifg=white guibg=orange
  highlight iCursor guifg=white guibg=steelblue
  "set guicursor=n-v-c:block-Cursor
  "set guicursor+=i:ver100-iCursor
  set guicursor+=i:blinkwait1
endif

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/powerline'
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'davidhalter/jedi-vim'
Plug 'ervandew/supertab'
Plug 'majutsushi/tagbar' 
call plug#end()

let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled = 1

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" git shortcuts
nmap <leader>gb :Gblame<cr>
nmap <leader>gs :Gstatus<cr>
nmap <leader>gc :Gcommit -v<cr>
nmap <leader>ga :Git add -p<cr>
nmap <leader>gm :Gcommit --amend<cr>
nmap <leader>gp :Gpush<cr>
nmap <leader>gd :Gdiff<cr>
nmap <leader>gw :Gwrite<cr>

" Tagbar
nmap <leader>T :TagbarToggle<CR>
