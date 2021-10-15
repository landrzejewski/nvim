set nocompatible
filetype off

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive' 
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'reedes/vim-pencil'
call plug#end()

set expandtab
set shiftwidth=2
set softtabstop=2

filetype plugin indent on
colorscheme gruvbox

map <silent> <C-n> :NERDTreeFocus<CR>
nnoremap <C-l> gt
nnoremap <C-h> gT
let NERDTreeMapOpenInTab='<ENTER>'

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END
