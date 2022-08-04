set encoding=utf-8
set number
syntax enable
set noswapfile
set autoindent
set fileformat=unix
set mouse=a
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4

call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'

call plug#end()

colorscheme gruvbox

let g:airline_theme='gruvbox'
if (has("termguicolors"))
    set termguicolors
endif

lua require 'colorizer'.setup()

" NERDTree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <F2> :NERDTreeToggle<CR>
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
