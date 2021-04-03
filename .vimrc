echon ">^.^<"

call plug#begin('~/.vim/plugged')
Plug 'KabbAmine/vCoolor.vim'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-startify'
Plug 'jiangmiao/auto-pairs'
Plug 'supercollider/scvim'
Plug 'tidalcycles/vim-tidal'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-surround'
Plug 'gregsexton/MatchTag'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vimwiki/vimwiki'
Plug 'Yggdroot/indentLine'
Plug 'chemzqm/vim-jsx-improve'
Plug 'tpope/vim-repeat' 
Plug 'psliwka/vim-smoothie'
Plug 'preservim/nerdcommenter'
Plug 'rakr/vim-two-firewatch'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
Plug 'lervag/vimtex'
Plug 'NLKNguyen/papercolor-theme'
Plug 'elmcast/elm-vim'
call plug#end()


set number

" set tabs, only spaces
set expandtab
set shiftwidth=4 
set softtabstop=4 

" nerdcommentary config
filetype plugin on

" autoformatting
" noremap <F3> :Autoformat<CR>

" Supercollider extension
au BufEnter,BufWinEnter,BufNewFile,BufRead *.sc,*.scd set filetype=supercollider
au Filetype supercollider packadd scvim

set directory^=$HOME/vimswap//

nnoremap <S-Enter> O<Esc>
nnoremap <CR> o<Esc>

"nnoremap <T>:bn <Esc>
"replace in selection
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf

"dir of the opened file
set autochdir

"yank to clipboard 
set clipboard=unnamedplus

"set spell checker
"set spell spelllang=en_us

" Vimwiki
set nocompatible
syntax on

nnoremap <C-right> <ESC>:bn<CR>
nnoremap <C-left> <ESC>:bp<CR>

nnoremap <C-Up> <Up>ddp<Up>
nnoremap <C-Down> ddp
let g:airline#extensions#fugitiveline#enabled = 1  

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

"" r plugin config
let R_rconsole_width = 0
let R_rconsole_height = 15

" Send selection or line to R with space bar, respectively.
nmap <nowait> <Space> <Plug>RDSendLine
vmap <nowait> Space> <Plug>RDSendSelection

" vim resize
if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
endif

"vimtex config
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:tex_conceal = ''

set t_Co=256   " This is may or may not needed.

set background=dark
colorscheme PaperColor

