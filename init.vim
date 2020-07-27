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


call plug#begin('~/.vim/plugged')

" Themes
Plug 'gruvbox-community/gruvbox'

"IDE
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'do' : { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" Theme
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let g:gruvbox_invert_tabline=1
let g:gruvbox_transparent_bg=1

highlight Normal     ctermbg=NONE guibg=NONE
highlight LineNr     ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE

" Tree
nnoremap <silent><C-E> :NERDTreeToggle<CR> 
autocmd BufEnter * lcd %:p:h

" Search
noremap <silent>fs :Files<cr> 

" Git
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

