" 
set encoding=utf-8
" ----------
" シンタックスハイライト
syntax enable
" ----------
" タブを表示するときの幅
set tabstop=4
" タブを挿入するときの幅
set shiftwidth=4
" タブをスペースに置換
set expandtab
" 改行時に前の行のインデントを継続する
set autoindent
" ----------
" 検索語句のハイライト
set hlsearch
" 直近のハイライトを解除するコマンドをキーにマップする
nnoremap <ESC><ESC> :noh<CR>
" 検索時に英大小文字の区別を無視する
set ignorecase
" 検索時に全て英小文字で入力した場合のみ区別を無視する
set smartcase
" ----------
" 括弧の対応関係を一瞬表示する
set showmatch
