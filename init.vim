syntax on

set guicursor=
set noshowmatch
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set cmdheight=2
set updatetime=50
set shortmess+=c
set colorcolumn=80
set background=light
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

" Themes
Plug 'arcticicestudio/nord-vim'

" Tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"IDE
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'do' : { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }
Plug 'dense-analysis/ale'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install --no-dev -o'}
Plug 'yaegassy/coc-intelephense', {'do': 'npm install --frozen-lockfile'}
call plug#end()

" Theme
colorscheme nord

highlight Normal     ctermbg=NONE guibg=NONE
highlight LineNr     ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE

" Tree
nnoremap <silent><C-E> :NERDTreeToggle<CR> 
autocmd BufEnter * lcd %:p:h

" Search
noremap <silent>fs :Files<cr> 

" Git
nnoremap <silent>ga :G<CR> 
nnoremap <silent>gc :Gcommit<CR> 
nnoremap <silent>gp :Git push origin HEAD<CR>
nnoremap <silent>gu :Gpull<CR>

" Lightline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1
" Identation
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
