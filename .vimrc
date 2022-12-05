let mapleader = " "
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:jedi#use_tabs_not_buffers = 1
let g:jedi#use_splits_not_buffers = "right"
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = "<C-l>"
let g:jedi#usages_command = "<leader><leader>u"
let g:jedi#goto_assignments_commad = "<leader><leader>g"
let g:jedi#goto_command = "<leader><leader>d"

inoremap jj <Esc>
set rnu
set nu
set nocompatible              " required
set t_Co=256


"split navigations
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>

nnoremap <leader><leader>sa :vsp<CR><C-w>T:tabp<CR><C-o>:tabn<CR>
nnoremap <leader><leader>st :vsp<CR><C-w>T:tabp<CR><C-t>:tabn<CR>
nnoremap <leader><leader>l :tabn<CR>
nnoremap <leader><leader>h :tabp<CR>
nnoremap <leader>tc :tabc<CR>
nnoremap <leader><leader>o  <C-o>
nnoremap <leader><leader>i  <C-i>

nnoremap <leader><leader>p :NERDTreeToggle<CR>
nnoremap <leader><leader>t :FloatermNew --height=0.3<CR>

nnoremap D  "_dd
nnoremap S "_S
nnoremap x "_x
nnoremap c "_c
nnoremap d "_d
nnoremap s "_s
nnoremap <leader>m `

inoremap <C-j> <Down>
inoremap <C-k> <Up>

" oprator mode
onoremap H ^
onoremap L $
onoremap P :normal! P

xnoremap <expr> p 'pgv"'.v:register.'y`>'
xnoremap <expr> P 'Pgv"'.v:register.'y`>'

filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'voldikss/vim-floaterm'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'davidhalter/jedi-vim'
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
