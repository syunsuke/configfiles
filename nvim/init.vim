if &compatible
  set nocompatible
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"dein.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add the dein installation directory into runtimepath
set runtimepath+=~/.local/share/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.local/share/dein')
  call dein#begin('~/.local/share/dein')

  call dein#load_toml("~/.config/nvim/dein.toml", {'lazy': 0})
  "call dein#add('neoclide/coc.nvim', {'merged': 0})

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"KEY MAP
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap jj <Esc>
nnoremap <silent> <Esc><Esc> :nohlsearch<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <S-Left>  <C-w><<CR>
nnoremap <S-Right> <C-w>><CR>
nnoremap <S-Up>    <C-w>-<CR>
nnoremap <S-Down>  <C-w>+<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Option
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase          " 大文字小文字を区別しない
set smartcase           " 検索文字に大文字がある場合は大文字小文字を区別
set incsearch           " インクリメンタルサーチ
set hlsearch            " 検索マッチテキストをハイライト 

set shiftround          " '<'や'>'でインデントする際に'shiftwidth'の倍数に丸める
set infercase           " 補完時に大文字小文字を区別しない
set hidden              " バッファを閉じる代わりに隠す（Undo履歴を残すため）
set switchbuf=useopen   " 新しく開く代わりにすでに開いてあるバッファを開く
set showmatch           " 対応する括弧などをハイライト表示する
set matchtime=1         " 対応括弧のハイライト表示を3秒にする
set backspace=start,eol,indent
set isk+=-

set nowritebackup
set nobackup
set noundofile

set clipboard=unnamed

set shiftwidth=2
set softtabstop=2
set expandtab
set tabstop=2
set smarttab

set wildmenu
set showcmd

set number              " 行番号の表示
set wrap                " 長いテキストの折り返し
set textwidth=0         " 自動的に改行が入るのを無効化
"set colorcolumn=80      " その代わり80文字目にラインを入れる

set clipboard=unnamedplus

set cursorline
"set list
"set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:<


