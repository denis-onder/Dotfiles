call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'crusoexia/vim-monokai'
call plug#end()

syntax on
colorscheme monokai

set tabstop=2
set shiftwidth=2
set relativenumber
set termguicolors
set t_Co=256

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'distinguished'

map <C-b>: NERDTreeToggle<CR>
