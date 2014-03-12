set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
" color theme
Bundle 'tomasr/molokai'

Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/taglist.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'mattn/emmet-vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'Raimondi/delimitMate'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-commentary'
Bundle 'Yggdroot/indentLine'
Bundle 'fholgado/minibufexpl.vim'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

syntax on
let mapleader=","
filetype plugin on

set encoding=utf-8      " 设置utf-8编码
set number              " 显示行号
set visualbell          " 去掉输入错误的提示音
set guifont=Monaco:h18  " 设置字体大小
set noswapfile          " 不使用swp文件

" 设置缩进
set tabstop=4
set shiftwidth=4
set expandtab           " 将tab键转换为空格
set smartindent         " 智能缩进, 等同 set si
set autoindent          " 自动缩进，等同 set ai

set hlsearch
set magic
set history=100
set autoread
set showcmd
set guioptions-=R
set cursorline          " 行光标
set ignorecase          " 搜索时忽略大小写

map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" Tab和Shift-Tab缩进
nmap <tab> v>
nmap <s-tab> v<
vmap <tab> >gv
vmap <s-tab> <gv

nmap <C-z> :shell<CR>
nmap <space> :

nmap <F7> :NERDTreeFind<CR>
nmap <F8> :NERDTreeToggle<CR>
nnoremap <silent> <F9> :TlistToggle<CR>

nnoremap <leader>gd :GitDiff<CR>
nnoremap <leader>gs :GitStatus<CR>

map <leader>il :IndentLinesToggle<CR>

" CtrlP plugin Settings
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_map = '<c-p>'

" Taglist Settings
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1

" PowerLine Settings
set nocompatible
set laststatus=2
let g:Powerline_symbols = 'fancy'

" Emmet Settings
let g:user_emmet_expandabbr_key = '<Tab>'

" Commentary Setting
autocmd FileType python,shell set commentstring=#\ %s

set runtimepath^=~/.vim/bundle/ctrlp

" Color Theme
colorscheme molokai
