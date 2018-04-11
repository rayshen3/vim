""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"install python python-dev cmake YCM(make) vim7.4
"run 'vim:BundleInstall'   or 'shell:vim +BundleInstall +all'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " required
filetype on                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'davidhalter/jedi-vim'
call vundle#end()            " required

filetype plugin indent on    " required
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"split navigations
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.js, *.html, *.css set tabstop=2 softtabstop=2 shiftwidth=2
"YCM
"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']
map <F2> :NERDTreeMirror<CR>
map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
set splitright
set splitbelow
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>


"define for ray
let python_highlight_all=1
inoremap jj <Esc>
"let mapleader="/"


syntax on
set t_Co=256
set background=dark
colorscheme wombat256mod
"colorscheme harlequin
" colorscheme desert

"jedi
"export PYTHONPATH="/home/shenlei.sl/python/lib/python3.6/site-packages":$PYTHONPATH
let g:jedi#show_call_signatures = "2"  "1：pop-up 2: bottom
let g:jedi#popup_select_first = 1
let g:jedi#documentation_command = "K"
let g:jedi#completions_command = "<C-j>"
let g:jedi#auto_close_doc = 1 "Automatically close preview window upon leaving insert mode


set encoding=utf-8
set nu
set relativenumber
set sw=4
set ts=4
set lbr
set sm
set selection=inclusive
set smarttab
set smartindent
set cmdheight=1
set backspace=indent,eol,start

"当光标一段时间保持不动了，就禁用高亮
autocmd cursorhold * set nohlsearch
"当输入查找命令时，再启用高亮
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>
highlight Search ctermbg=yellow ctermfg=black
highlight IncSearch ctermbg=black ctermfg=yellow
highlight MatchParen cterm=underline ctermbg=NONE ctermfg=NONE
"设置默认进行大小写不敏感查找
set ignorecase
"如果有一个大写字母，则切换到大小写敏感查找
set smartcase




"provide hjkl movements in Insert mode via the <Alt> modifier key
"inoremap <A-h> <C-o>h
"inoremap <A-j> <C-o>j
"inoremap <A-k> <C-o>k
"inoremap <A-l> <C-o>l
