let mapleader = " "
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:jedi#use_tabs_not_buffers = 1
let g:jedi#use_splits_not_buffers = "right"
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = "<C-l>"
let g:jedi#usages_command = "<leader><leader>u"
let g:jedi#goto_assignments_command = "<leader><leader>g"
let g:jedi#goto_command = "<leader><leader>d"
let g:jedi#environment_path = "/usr/bin/python3.9"

let g:vim_isort_config_overrides = {'include_trailing_comma': 1, 'multi_line_output': 3}
let g:vim_isort_python_version = 'python3'

let g:pythonPaths = [
    \ expand('~/Projects/automation_py'),
    \ ]

let g:ale_set_highlights = 0

" let g:go_def_mode='gopls'
" let g:go_info_mode='gopls'

let g:VimuxOrientation="h"
let g:VimuxHeight="40"

colorscheme atom-dark-256

inoremap jj <Esc>
tnoremap jj <C-\><C-n>
set rnu
set nu
set nocompatible              " required
set t_Co=256
set modifiable
set cursorline
set noswapfile
set splitright
set splitbelow
hi cursorline

"suggestion
inoremap <c-d> <c-x><c-d>
inoremap <c-n> <c-x><c-n>

"split navigations
nnoremap <leader>J <C-W><C-J>
nnoremap <leader>K <C-W><C-K>
nnoremap <leader>L <C-W><C-L>
nnoremap <leader>H <C-W><C-H>

nnoremap <leader><leader>sa :vsp<CR><C-w>T:tabp<CR><C-o>:tabn<CR>
nnoremap <leader><leader>st :vsp<CR><C-w>T:tabp<CR><C-t>:tabn<CR>
nnoremap <leader><leader>l :tabn<CR>
nnoremap <leader><leader>h :tabp<CR>
nnoremap <leader>tc :tabc<CR>
nnoremap <leader><leader>o  <C-o>zz
nnoremap <leader><leader>i  <C-i>zz

nnoremap <leader><leader>p :NERDTreeToggle<CR>
nnoremap <leader><leader>t :FloatermNew --height=0.3<CR>
nnoremap <leader><leader>T :tab term ++close<CR>

map <leader>dd :call VimuxRunCommand("b " . bufname("%") . ":" . line("."))<CR>
map <leader>ds :call VimuxRunCommand("s ")<CR>
map <leader>dc :call VimuxRunCommand("c ")<CR>
map <Leader>rn :call VimuxRunCommand("pt -m mytest " . bufname("%"))<CR>
map <Leader>rb :call VimuxRunCommand("pt -m mytest " . bufname("%"), 0)<CR>
map <leader>rt mg:let line=matchstr(getline('.'),'def \w\+')<CR>:let fn=split(line)[1]<CR>:let classline=getline(search("^class"))<CR>:let class=split(matchstr(classline, 'class \w\+'))[1]<CR>:call VimuxRunCommand("pt " . bufname("%") . "::" . class . "::" . fn)<CR>`g

:let line2=matchstr(getline('.'),'def \w\+')

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

nnoremap <silent> <C-i> :ImportName<CR><c-o>
nnoremap <silent> <C-s> mt:!isort %<CR>`tzz:delm t<CR>

nnoremap <silent> <C-k> :ALEPrevious<CR>zz
nnoremap <silent> <C-j> :ALENext<CR>zz

" abbreviation
:iab bp breakpoint()
:cab tn tabnew
:cab gf GetTests 

" command
command Sim 70vsp %
command GetTests call VimuxRunCommand("cat " . bufname("%") . "| grep 'def test_' | awk -F '(' '{print $1}' | awk '{print $2}'")<CR>


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
Plugin 'mgedmin/python-imports.vim'
Plugin 'fisadev/vim-isort'
Plugin 'dense-analysis/ale'
Plugin 'fatih/vim-go'
Plugin 'preservim/vimux'
Plugin 'vim-test/vim-test'
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
