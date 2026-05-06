" ============================================================================
" vim 設定ファイル - ベストプラクティス
" ============================================================================

" --- 基本設定 ---
" vi 互換モードを無効化（vim の全機能を有効にする）
set nocompatible

" ファイルタイプ検出・プラグイン・インデントを有効化
filetype plugin indent on

" シンタックスハイライトを有効化
syntax enable

" --- 表示設定 ---
" 行番号を表示
set number

" カーソル行を強調表示
set cursorline

" 右端での折り返しを無効化
set nowrap

" ステータスラインを常に表示
set laststatus=2

" コマンドを画面下部に表示
set showcmd

" 現在のモードを表示
set showmode

" 括弧の対応をハイライト表示
set showmatch

" 縦80列目にガイドラインを表示
set colorcolumn=80

" --- 検索設定 ---
" インクリメンタルサーチ（入力しながらリアルタイム検索）
set incsearch

" 検索結果をハイライト表示
set hlsearch

" 大文字小文字を区別しない
set ignorecase

" 検索に大文字が含まれる場合は区別する
set smartcase

" ファイル末尾まで検索したら先頭に戻る
set wrapscan

" --- インデント設定 ---
" タブをスペースに展開
set expandtab

" タブ幅を4スペースに設定
set tabstop=4

" 自動インデントのスペース幅
set shiftwidth=4

" タブ入力時に shiftwidth 単位で移動
set softtabstop=4

" 自動インデントを有効化
set autoindent

" スマートインデントを有効化
set smartindent

" --- エンコーディング ---
" 内部文字コードを UTF-8 に設定
set encoding=utf-8

" ファイル読み込み時の文字コード自動判別
set fileencodings=utf-8,sjis,euc-jp,latin1

" --- ファイル操作 ---
" スワップファイルを作成しない
set noswapfile

" バックアップファイルを作成しない
set nobackup

" undo 履歴ファイルを作成しない
set noundofile

" ファイル変更時に自動で読み込み直す
set autoread

" バッファを切り替えても保存を要求しない
set hidden

" --- 操作性 ---
" バックスペースで改行・インデント・挿入開始位置より前の文字を削除可能に
set backspace=indent,eol,start

" コマンドライン補完を強化（Tabキーで候補表示）
set wildmenu
set wildmode=list:longest

" マウス操作を有効化
set mouse=a

" クリップボードとの連携（macOS）
set clipboard=unnamed

" スクロール時に上下8行のマージンを確保
set scrolloff=8

" --- パフォーマンス ---
" 高速ターミナル接続として扱う
set ttyfast

" 再描画を遅延させてマクロ実行を高速化
set lazyredraw

" --- キーバインド ---
" leader キーをスペースに設定（ノーマルモードでのコマンドのプレフィックス）
let mapleader = " "

" jj でインサートモードを抜ける
inoremap jj <Esc>

" leader+h で検索ハイライトを消去
nnoremap <leader>h :nohlsearch<CR>

" leader+w で保存
nnoremap <leader>w :w<CR>

" leader+q で終了
nnoremap <leader>q :q<CR>

" Ctrl+h/j/k/l でウィンドウ間を移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" --- カラーテーマ ---
" 256色対応
set t_Co=256

" ダークバックグラウンド向けの配色
set background=dark

" --- その他 ---
" 最後のカーソル位置を記憶して次回起動時に復元
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   execute "normal! g`\"" |
  \ endif
