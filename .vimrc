"-------------------------------------------------------------------------------
" Memo
"-------------------------------------------------------------------------------
" :h text-objects      - テキストオブジェクトのヘルプを表示
" set ft=javascript    - ファイルを保存しなくてもJavaScriptモードになる
" :Scratch             - 作業用バッファは一時的なメモや編集用のスペースとして利用できます
" :ls                  - 開いているバッファを一覧で表示
" g/<search>/<command> - g は search 条件に当てはまる行ごとに command が実行される
" v/<search>/<command> - v は search 条件に当てはまらない行ごとに command が実行される
" hisasannの上で*を押して検索して、:%s//hoge/gで置換ができる
" また、:%g//dでhisasannを含む行だけを削除、:%v//dでhisasannを含む行を残すことができる
" さらにすごいのが、:let @a=''でレジスタ消して、:%g//y Aで"apにhisasannを含む行をyankできる

"-------------------------------------------------------------------------------
" Bundle
"-------------------------------------------------------------------------------
set nocompatible               " Be iMproved

 if has('vim_starting')
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundle 'gmarik/vundle'
NeoBundle 'YankRing.vim'

" neocomplcache
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'honza/vim-snippets'

" センタリング
NeoBundle 'h1mesuke/vim-alignta'
" :Alignta- でハイフンでセンタリング

" My Bundles here:
" ZenCoding
" NeoBundle 'ZenCoding.vim'
NeoBundle 'mattn/zencoding-vim'
" Ctrl+y, Ctrl+,

" fontzoom.vim
" +、-で拡大、縮小、:Fontzoom!でリセット、あとはCtrl押しながらマウスのスクロール
NeoBundle 'thinca/vim-fontzoom'
" indent-guides.vim
NeoBundle 'nathanaelkane/vim-indent-guides'

"" TextMate風にタブで補完してくれる
" NeoBundle "MarcWeber/vim-addon-mw-utils"
" NeoBundle "tomtom/tlib_vim"
" NeoBundle "snipmate-snippets"
" neosnippetのTABとバッテイングするためコメントアウト
" NeoBundle "garbas/vim-snipmate"

" html5
" .htmlファイル内のJavaScriptが残念になるので一旦コメントアウト
"NeoBundle 'othree/html5.vim'

" Objective-C
NeoBundle 'cocoa.vim'
" Cmd + Opt + ↑ - .hファイルと.mファイルのトグル
" Cmd + r        - ビルドand実行
" Cmd + b        - ビルド
" Cmd + 0        - XCode起動
" Cmd + 2        - :ListMethods

" 以下の4つでIDEを実現
NeoBundle 'wesleyche/SrcExpl'
NeoBundle 'Trinity'
" o : ディレクトリを開く or ファイルを開く
" O : 再帰的にディレクトリを開く
" s : 縦に開く
" m : メニューを開く
" Trinityが勝手にインクルードしているのでここで呼ぶと誤動作する
" NeoBundle 'scrooloose/nerdtree'
" Windowsの場合ctagのインストールが必要
" via http://nanasi.jp/articles/others/ctags.html
NeoBundle 'taglist.vim'

" markdown
" require - gem install bluecloth
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'tpope/vim-markdown'

NeoBundle 'tyru/open-browser.vim'
NeoBundle 'tyru/urilib.vim'

" XMLとかHTMLとかの編集機能を強化する
" NeoBundle 'xmledit'
" 以下のリンクのhtml.vimを作成しないと動かない
" via http://d.hatena.ne.jp/riskn/20070430/1177941248

" via http://subtech.g.hatena.ne.jp/secondlife/20061222/1166778147
NeoBundle 'tpope/vim-surround'
" d + s + 囲んでるもの
" ds'     (今カーソルのある文字列を囲んでいる ' を消す)
" ds"     (" を)
" ds(     (() を)
" dst     (<tag> を)
" c + s + 囲んでるもの, + 変更したいもの
" cs'"            (今囲んでいる ' を " に変える)
" cs"<tag>        (今囲んでいる " を <tag> に変える)
" cst<tag>        (直近で囲まれてるタグを <tag> に)
" h*oge                   →  "hoge"                    # ysiw"
" "↑ カーソル位置の単語を " で囲う
" { *:foo => 'bar' }      →  ( { :foo => 'bar' } )     # ysa{( or ysaBb
" "↑ カーソル位置の {} で囲まれた文字列を () で囲う
" he said, *i am a pen.   →  he said, "i am a pen."    # ys$"
" "↑ カーソル位置がら行末までを " で囲う
" yahho*oooo konnichiha-  →  'yahhooooo konnichiha-'   # yss'
" "↑ 行全体を ' で囲う。行指向操作。
" ySSt  カレント行をタグで囲い改行する
" インサートモードでC-G, s or S  閉じタグの自動補完
" hoge  S<div> <div>hoge</div> これがかなり便利

" JavaScript
" syntax
" NeoBundle 'JavaScript-syntax'
NeoBundle 'jelera/vim-javascript-syntax'
" indent
" NeoBundle 'pangloss/vim-javascript'
NeoBundle 'jiangmiao/simple-javascript-indenter'
" CoffeeScript
NeoBundle 'kchmck/vim-coffee-script'

" メソッド宣言、変数宣言
NeoBundle 'majutsushi/tagbar'
" sudo brew install ctags をしてMacにはじめからついているのは使わない

" unite
NeoBundle 'Shougo/unite.vim'
NeoBundle 'tsukkee/unite-help'
NeoBundle 'h1mesuke/unite-outline'
" Ctrl+f カレントのファイラーを開く
" Ctrl+b バッファを開く（これはよく使う）

" vimfiler
NeoBundle 'Shougo/vimfiler'

" ステータスラインをカッコよくする
" Windowsだと文字化けするのでその場合はコメントアウト
" NeoBundle 'Lokaltog/vim-powerline'
" NeoBundle 'taichouchou2/alpaca_powertabline'
" NeoBundle 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim'}
NeoBundle 'bling/vim-airline'

" -- でメソッドチェーン整形（php、perl、rubyだけ）
NeoBundle 'c9s/cascading.vim'

" カレンダー
NeoBundle 'mattn/calendar-vim'
" :Calendar or :CalendarH

" 履歴
NeoBundle 'Gundo'
" F5

" ヘックスコードをその色で表示
NeoBundle 'skammer/vim-css-color'

" 目的の単語にすばやくカーソルを移動
NeoBundle 'Lokaltog/vim-easymotion'

" git
NeoBundle 'tpope/vim-fugitive'

" vim girl
" NeoBundle 'thinca/vim-splash'

" multi
" NeoBundle 'mattn/multi-vim'
" :Multi ^ or :Multi $ or :Multi hoge

" minimap
" 重いな
" NeoBundle 'koron/minimap-vim'

" Titanium
" NeoBundle 'pekepeke/titanium-vim'

" 更新したりすると、結構ここで怒られるのでとりあえず使わない
if !has("win32") && !has("win64")
  " Vimでシェルを使えるようにする
  NeoBundle 'Shougo/vimproc'
  NeoBundle 'Shougo/vimshell'
  " インストール方法（Mac）
  " via  https://github.com/Shougo/vimshell
  " cd .vim/bundle/vimproc
  " make -f make_mac.mak
  " mkdir ~/.vim/autoload
  " cp -r ~/.vim/bundle/vimproc/autoload/ ~/.vim/autoload
  " Winは面倒そう http://www.karakaram.com/vim/vimproc64/
endif

" Comment
NeoBundle 'tyru/caw.vim'

" レインボーサイクロン！
NeoBundle 'daisuzu/rainbowcyclone.vim'

" メモ
NeoBundle 'glidenote/memolist.vim'

" vim-smartchr
NeoBundle 'kana/vim-smartchr'


" vim上のtwitter client
NeoBundle 'TwitVim'

" 使っちゃいけないPlugin
"NeoBundle 'vim-scripts/AutoComplPop'
"NeoBundle 'AutoClose'

" fを拡張、f入力後2文字入力しfを押していくと行を跨いで移動する
NeoBundle 'rhysd/clever-f.vim'

" s入力後2文字入力するとその行の場所に移動できる、fよりも賢いが少し重い
" via http://qiita.com/items/36805a539abb813a5158
NeoBundle 'goldfeld/vim-seek'

NeoBundle 'kana/vim-textobj-indent'
" dai, diiで同じインデントを削除
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'kana/vim-textobj-line'

filetype plugin indent on     " required!

"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

"-------------------------------------------------------------------------------
" 全般設定
"-------------------------------------------------------------------------------
set nocompatible            " 必ず最初に書く（vi互換コードを解除）
set viminfo='20,<50,s10,h,! " YankRing用に!を追加
set shellslash              " Windowsでディレクトリパスの区切り文字に / を使えるようにする
set lazyredraw              " マクロなどを実行中は描画を中断
set number        " 行番号を非表示
set ruler        " ルーラーを表示 (noruler:非表示)
set cmdheight=2      " コマンドラインの高さ (Windows用gvim使用時はgvimrcを編集すること)
set laststatus=2    " 常にステータス行を表示 (詳細は:he laststatus)
" via http://kadoppe.com/archives/2013/09/vimrc-2.html
set lazyredraw
set ttyfast

" statusline {{{
" default
"set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
" fugitive default
"set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
" 分解したパターン via http://blog.ruedap.com/entry/20110712/vim_statusline_git_branch_name
" ステータスラインの表示
" Lokaltog/vim-powerlineを使っているとうまく動かないかも
  set statusline=%<     " 行が長すぎるときに切り詰める位置
  set statusline+=[%n]  " バッファ番号
  set statusline+=%m    " %m 修正フラグ
  set statusline+=%r    " %r 読み込み専用フラグ
  set statusline+=%h    " %h ヘルプバッファフラグ
  set statusline+=%w    " %w プレビューウィンドウフラグ
  set statusline+=%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}  " fencとffを表示
  set statusline+=%y    " バッファ内のファイルのタイプ
  set statusline+=\     " 空白スペース
if winwidth(0) >= 130
  set statusline+=%F    " バッファ内のファイルのフルパス
else
  set statusline+=%t    " ファイル名のみ
endif
  set statusline+=%=    " 左寄せ項目と右寄せ項目の区切り
  set statusline+=%{fugitive#statusline()}  " Gitのブランチ名を表示
  set statusline+=\ \   " 空白スペース2個
  set statusline+=%1l   " 何行目にカーソルがあるか
  set statusline+=/
  set statusline+=%L    " バッファ内の総行数
  set statusline+=,
  set statusline+=%c    " 何列目にカーソルがあるか
  set statusline+=%V    " 画面上の何列目にカーソルがあるか
  set statusline+=\ \   " 空白スペース2個
  set statusline+=%P    " ファイル内の何％の位置にあるか
" }}}

" set title
set title titlestring=%t%(\ %M%)%(\ (%{expand(\"%:~:.:h\")})%)%(\ %a%)
set linespace=0
set showcmd        " コマンドをステータス行に表
if has("win32") || has("win64")
  " sjisはWindows用
  set encoding=sjis
else
  set encoding=utf-8
endif

" 折りたたみ関連
set nofoldenable
set foldmethod=indent
set foldopen=all  " fold内に移動すれば自動で開く
" set foldclose=all  " fold外に移動しfoldlevelより深ければ閉じる
set foldlevel=1   " 折りたたみの具合
set foldnestmax=2  " 最大折りたたみ深度$
set foldcolumn=2  " 左側に折りたたみガイド表示$


"-------------------------------------------------------------------------------
" コマンド補完
"-------------------------------------------------------------------------------
set wildmenu           " コマンド補完を強化
set wildmode=list:full " リスト表示，最長マッチ
set tags=~/.tags,tags


"-------------------------------------------------------------------------------
" 検索
"-------------------------------------------------------------------------------
set ignorecase  " 大文字小文字無視
set smartcase  " 大文字ではじめたら大文字小文字無視しない
set wrapscan  " 最後まで検索したら先頭へ戻る
"set nowrapscan  " 検索をファイルの先頭へループしない
set hlsearch  " 検索文字をハイライト
set incsearch  " インクリメンタルサーチ


"-------------------------------------------------------------------------------
" タブ
"-------------------------------------------------------------------------------
set autoindent
set cindent    " C言語的なインデント
set expandtab    " タブを空白文字に展開
set tabstop=2   " タブ文字の幅を設定できます。デフォルトは8です。
set softtabstop=2   " タブ文字を入力した際にタブ文字の代わりに挿入されるホワイトスペースの量を設定します。
set shiftwidth=2    " >> 等のコマンドや自動インデントの際に使う1レベル分のインデント量を設定します。
set shiftround
set smarttab
set nowrap

if has("autocmd")
  "ファイルタイプの検索を有効にする
  filetype plugin on
  "そのファイルタイプにあわせたインデントを利用する
  filetype indent on
  " これらのftではインデントを無効に
  "autocmd FileType php filetype indent off

  autocmd FileType markdown   setlocal sw=4 sts=4 ts=4 et
  autocmd FileType apache     setlocal sw=4 sts=4 ts=4 et
  autocmd FileType aspvbs     setlocal sw=4 sts=4 ts=4 et
  autocmd FileType c          setlocal sw=4 sts=4 ts=4 et
  autocmd FileType cpp        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType cs         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType css        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType diff       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType eruby      setlocal sw=4 sts=4 ts=4 et
  autocmd FileType html       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType java       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType javascript setlocal sw=2 sts=2 ts=2 et
  autocmd FileType perl       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType php        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType python     setlocal sw=4 sts=4 ts=4 et
  autocmd FileType ruby       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType haml       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType sh         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType sql        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType vb         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType vim        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType wsh        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType xhtml      setlocal sw=4 sts=4 ts=4 et
  autocmd FileType xml        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType yaml       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType zsh        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType scala      setlocal sw=2 sts=2 ts=2 et
  autocmd FileType snippet    setlocal sw=4 sts=4 ts=4 et
endif

" 保存時にtabをスペースに変換する
autocmd BufWritePre * :%s/\t/  /ge


"-------------------------------------------------------------------------------
" backup
"-------------------------------------------------------------------------------
set backup
set backupdir=~/vim_backup
set swapfile
set directory=~/vim_swap
"set nobackup   " バックアップ取らない
"set autoread   " 他で書き換えられたら自動で読み直す
"set noswapfile " スワップファイル作らない
"set hidden     " 編集中でも他のファイルを開けるようにする


"-------------------------------------------------------------------------------
" 色
"-------------------------------------------------------------------------------
" syntax color
syntax on
"colorscheme molokai  " .gvimrcに書かないと反映されないのでコメントアウト
highlight LineNr ctermfg=darkgrey


"-------------------------------------------------------------------------------
" 移動設定
"-------------------------------------------------------------------------------
" deleteボタンが遠いんだ！
nmap <C-H> <BS>

" 0, 9で行頭、行末へ
nmap 1 ^
nmap 9 $


"-------------------------------------------------------------------------------
" 設定
"-------------------------------------------------------------------------------
" 挿入モードからコマンドモードに戻るキーバインド
imap <C-j> <esc>
" insert mode でjjでesc
inoremap jj <Esc>


"-------------------------------------------------------------------------------
" 編集関連
"-------------------------------------------------------------------------------
set showmatch      " 括弧の対応をハイライト
set backspace=indent,eol,start
set clipboard=unnamed
set pastetoggle=<F12>
set guioptions+=a

" insertモードを抜けるとIMEオフ
set noimdisable
set iminsert=0 imsearch=0
set noimcmdline
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

" コンマの後に自動的にスペースを挿入
inoremap , ,<Space>
" XMLの閉タグを自動挿入
augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
augroup END

" 保存時に行末の空白を除去する
autocmd BufWritePre * :%s/\s\+$//ge

" 線を引く
inoremap <F8> <C-R>=repeat('-', 80 - virtcol('.'))<CR>

"-------------------------------------------------------------------------------
" エスケープ関連
"-------------------------------------------------------------------------------
" エスケープ
vnoremap <Leader>e "xx:call <SID>EscapeXml('x')<CR>"xP

function s:EscapeXml(regname)
  let x = getreg(a:regname)
  let x = substitute(x, '&', '\&amp;', 'g')
  let x = substitute(x, '<', '\&lt;', 'g')
  let x = substitute(x, '>', '\&gt;', 'g')
  let x = substitute(x, "'", '\&apos;', 'g')
  let x = substitute(x, '"', '\&quot;', 'g')
  call setreg(a:regname, x)
endfunction

" アンエスケープ
vnoremap <Leader>ue "xx:call <SID>UnEscapeXml('x')<CR>"xP

function s:UnEscapeXml(regname)
  let x = getreg(a:regname)
  let x = substitute(x, '&amp;', '&', 'g')
  let x = substitute(x, '&lt;', '<', 'g')
  let x = substitute(x, '&gt;', '>', 'g')
  let x = substitute(x, '&apos;', "'", 'g')
  let x = substitute(x, '&quot;', '"', 'g')
  call setreg(a:regname, x)
endfunction


"-------------------------------------------------------------------------------
" その他
"-------------------------------------------------------------------------------
" ;でコマンド入力( ;と:を入れ替)
noremap ; :
" pluginとかでnmap :call hoge..とかやってるやつがあるので、
" :でもexコマンドに入れるようにしておく
" noremap : ;

" doc
" Windowsだとこのdocディレクトリがないため
if has("win32") || has("win64")
  " helptags ~/.vim/doc
else
  helptags ~/.vim/doc
endif

" JSONフォーマット
map <Leader>j !python -m json.tool<CR>

" 文字コードの自動認識
if &encoding !=# 'utf-8'
  set encoding=japan
  set fileencoding=japan
endif
if has('iconv')
  let s:enc_euc = 'euc-jp'
  let s:enc_jis = 'iso-2022-jp'
  " iconvがeucJP-msに対応しているかをチェック
  if iconv("\x87\x64\x87\x6a", 'cp932', 'eucjp-ms') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'eucjp-ms'
    let s:enc_jis = 'iso-2022-jp-3'
  " iconvがJISX0213に対応しているかをチェック
  elseif iconv("\x87\x64\x87\x6a", 'cp932', 'euc-jisx0213') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'euc-jisx0213'
    let s:enc_jis = 'iso-2022-jp-3'
  endif
  " fileencodingsを構築
  if &encoding ==# 'utf-8'
    let s:fileencodings_default = &fileencodings
    let &fileencodings = s:enc_jis .','. s:enc_euc .',cp932'
    let &fileencodings = &fileencodings .','. s:fileencodings_default
    unlet s:fileencodings_default
  else
    let &fileencodings = &fileencodings .','. s:enc_jis
    set fileencodings+=utf-8,ucs-2le,ucs-2
    if &encoding =~# '^\(euc-jp\|euc-jisx0213\|eucjp-ms\)$'
      set fileencodings+=cp932
      set fileencodings-=euc-jp
      set fileencodings-=euc-jisx0213
      set fileencodings-=eucjp-ms
      let &encoding = s:enc_euc
      let &fileencoding = s:enc_euc
    else
      let &fileencodings = &fileencodings .','. s:enc_euc
    endif
  endif
  " 定数を処分
  unlet s:enc_euc
  unlet s:enc_jis
endif
" 日本語を含まない場合は fileencoding に encoding を使うようにする
if has('autocmd')
  function! AU_ReCheck_FENC()
    if &fileencoding =~# 'iso-2022-jp' && search("[^\x01-\x7e]", 'n') == 0
      let &fileencoding=&encoding
    endif
  endfunction
  autocmd BufReadPost * call AU_ReCheck_FENC()
endif

"改行コードの自動認識
if has("win32") || has("win64")
  set fileformats=dos
else
  set fileformats=mac,unix,dos
endif

" □とか○の文字があってもカーソル位置がずれないようにする
if exists('&ambiwidth')
  set ambiwidth=double
endif

" Ctrl + n でファイルのsyntaxチェック、Ctrl + e でファイルを実行することが出来るようにしてます。(perlとrubyのみ）
autocmd FileType perl :map <C-n> <ESC>:!perl -cw %<CR>
autocmd FileType perl :map <C-e> <ESC>:!perl %<CR>
autocmd FileType ruby :map <C-n> <ESC>:!ruby -cW %<CR>
autocmd FileType ruby :map <C-e> <ESC>:!ruby %<CR>

" gjslint
if !has("win32") && !has("win64")
  autocmd FileType javascript :compiler gjslint
  autocmd QuickfixCmdPost make copen
endif

" 括弧入力後に←に移動
imap {} {}<Left>
imap [] []<Left>
" imap () ()<Left>
imap "" ""<Left>
imap '' ''<Left>
imap <> <><Left>

" カーソル行をハイライト
set cursorline
" カレントウィンドウにのみ罫線を引く
augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END

hi clear CursorLine
hi CursorLine gui=underline
highlight CursorLine ctermbg=black guibg=black

" 全角スペースの表示
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/

" 挿入モード時、ステータスラインの色を変更a
" via https://sites.google.com/site/fudist/Home/vim-nihongo-ban/vim-color
let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'

if has('syntax')
  augroup InsertHook
    autocmd!
    autocmd InsertEnter * call s:StatusLine('Enter')
    autocmd InsertLeave * call s:StatusLine('Leave')
  augroup END
endif

let s:slhlcmd = ''
function! s:StatusLine(mode)
  if a:mode == 'Enter'
    silent! let s:slhlcmd = 'highlight ' . s:GetHighlight('StatusLine')
    silent exec g:hi_insert
  else
    highlight clear StatusLine
    silent exec s:slhlcmd
  endif
endfunction

function! s:GetHighlight(hi)
  redir => hl
  exec 'highlight '.a:hi
  redir END
  let hl = substitute(hl, '[\r\n]', '', 'g')
  let hl = substitute(hl, 'xxx', '', '')
  return hl
endfunction

" TextMateで開く
nnoremap ,mate :<C-u>! mate %<CR>

" Sublime Text 1で開く
nnoremap ,subl :<C-u>! subl %<CR>

" ファイルタイプ
nnoremap ,js :<C-u>set filetype=javascript<CR>
nnoremap ,css :<C-u>set filetype=css<CR>
nnoremap ,html :<C-u>set filetype=html<CR>

"<space>j, <space>kで画面送り
noremap <Space>j <C-f>
noremap <Space>k <C-b>

" カーソル位置の単語をyankする
nnoremap vy vawy

"ビジュアルモード時vで行末まで選択
"nnoremap vv ^v$h
vnoremap v $h

" 最後に編集された位置に移動
nnoremap gb '[

"move tab
nnoremap gh gT
nnoremap gl gt

"git
nnoremap <Space>g :<C-u>!git<Space>

" <,>による連続インデント
vnoremap < <gv
vnoremap > >gv

" htmlタグの属性を削除
nnoremap ,ha :<C-u>s/\(<[a-zA-Z0-9]\+\)\([^>]\\|\n\)\{-}>/\1>/g<CR>:<C-u>nohl<CR>

" now
nnoremap <F2> "=strftime("%Y/%m/%d %H:%M:%S")<CR>P
inoremap <F2> <C-R>=strftime("%Y/%m/%d %H:%M:%S")<CR>

" :CdCurrent のエイリアス
nnoremap <Space>cd :<C-u>CdCurrent<CR>

autocmd FileType html setlocal includeexpr=substitute(v:fname,'^\\/','','') | setlocal path+=;/

" 無限アンドゥ
if has('persistent_undo')
  set undodir=~/.vim/undo
  set undofile
endif

" ↓キーでシンタックスチェック
au FileType html :compiler tidy
au FileType html :setlocal makeprg=tidy\ -raw\ -quiet\ -errors\ --gnu-emacs\ yes\ \"%\"
au FileType html :map <down> <esc>:make<cr>
au FileType css :compiler css
au FileType css :map <down> <esc>:make<cr>
"au FileType javascript :compiler javascriptlint
"au FileType javascript :map <down> <esc>:make<cr>
au FileType php        :map <down> <esc>:!php  -l %<cr>
au FileType perl       :map <down> <esc>:!perl -c %<cr>
au FileType ruby       :map <down> <esc>:!ruby -c %<cr>
au FileType javascript :map <down> <esc>:make %<cr>

" ↑キーで実行
au FileType php        :map <up> <esc>:!php  %<cr>
au FileType perl       :map <up> <esc>:!perl %<cr>
au FileType ruby       :map <up> <esc>:!ruby %<cr>
au FileType javascript :map <up> <esc>:!node %<cr>

" <Space>q で強制終了
nnoremap <Space>q :<C-u>q!<Return>

" ESC*2 でハイライトやめる
nnoremap <Esc><Esc> :<C-u>set nohlsearch<Return>

" encoding
nmap ,U :set encoding=utf-8<CR>
nmap ,E :set encoding=euc-jp<CR>
nmap ,S :set encoding=cp932<CR>
nmap ,J :set fileencoding=iso-2022-jp<CR>

" fileencoding
nmap ,fU :set fileencoding=utf-8<CR>
nmap ,fE :set fileencoding=euc-jp<CR>
nmap ,fS :set fileencoding=cp932<CR>
nmap ,fJ :set fileencoding=iso-2022-jp<CR>

" fileformat
nmap ,fu :set fileformat=unix<CR>
nmap ,fd :set fileformat=dos<CR>
nmap ,fm :set fileformat=mac<CR>

"u 検索時に勝手にエスケープさせる
cnoremap <expr> /  getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ?  getcmdtype() == '?' ? '\?' : '?'

" hogeファイル
command! Hoge edit ~/hoge/hoge.txt

" 0番レジスタを使いやすくした
" via http://qiita.com/items/bd97a9b963dae40b63f5
vnoremap <silent> <C-p> "0p

" 連番
set nrformats-=octal
nnoremap <silent> co :ContinuousNumber <C-a><CR>
vnoremap <silent> co :ContinuousNumber <C-a><CR>
command! -count -nargs=1 ContinuousNumber let c = col('.')|for n in range(1, <count>?<count>-line('.'):1)|exec 'normal! j' . n . <q-args>|call cursor('.', c)|endfor

" Ctrl + hjkl でウィンドウ間を移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Shift + 矢印でウィンドウサイズを変更
nnoremap <S-Left>  <C-w><<CR>
nnoremap <S-Right> <C-w>><CR>
nnoremap <S-Up>    <C-w>-<CR>
nnoremap <S-Down>  <C-w>+<CR>


" Anywhere SID.
function! s:SID_PREFIX()
  return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction

" Set tabline.
function! s:my_tabline()  "{{{
  let s = ''
  for i in range(1, tabpagenr('$'))
    let bufnrs = tabpagebuflist(i)
    let bufnr = bufnrs[tabpagewinnr(i) - 1]  " first window, first appears
    let no = i  " display 0-origin tabpagenr.
    let mod = getbufvar(bufnr, '&modified') ? '!' : ' '
    let title = fnamemodify(bufname(bufnr), ':t')
    let title = '[' . title . ']'
    let s .= '%'.i.'T'
    let s .= '%#' . (i == tabpagenr() ? 'TabLineSel' : 'TabLine') . '#'
    let s .= no . ':' . title
    let s .= mod
    let s .= '%#TabLineFill# '
  endfor
  let s .= '%#TabLineFill#%T%=%#TabLine#'
  return s
endfunction "}}}
let &tabline = '%!'. s:SID_PREFIX() . 'my_tabline()'
set showtabline=2 " 常にタブラインを表示

" The prefix key.
nnoremap    [Tag]   <Nop>
nmap    t [Tag]
" Tab jump
for n in range(1, 9)
  execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor
" t1 で1番左のタブ、t2 で1番左から2番目のタブにジャンプ

map <silent> [Tag]c :tablast <bar> tabnew<CR>
" tc 新しいタブを一番右に作る
map <silent> [Tag]x :tabclose<CR>
" tx タブを閉じる
map <silent> [Tag]n :tabnext<CR>
" tn 次のタブ
map <silent> [Tag]p :tabprevious<CR>
" tp 前のタブ

" バッファの移動
nmap <C-b> :ls<CR>:buf

" 矢印なキーでバッファ移動
map <Right> :bn<CR>
map <Left> :bp<CR>


"-------------------------------------------------------------------------------
" plugin
"-------------------------------------------------------------------------------
" toggle nerdtree
nnoremap <F4> :<C-u>NERDTreeToggle<CR>

"-------------------------------------------------------------------setting neocomplcache
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ 'perl'     : $HOME . '/dotfiles/dict/perl.dict',
      \ 'scheme' : $HOME.'/.gosh_completions'
      \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
" let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

" for snippets
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'


""" Unite.vim
" 起動時にインサートモードで開始しない
let g:unite_enable_start_insert = 1

" インサート／ノーマルどちらからでも呼び出せるようにキーマップ
nnoremap <silent> <C-f> :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
inoremap <silent> <C-f> <ESC>:<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> <C-e> :<C-u>Unite buffer file_mru<CR>
inoremap <silent> <C-e> <ESC>:<C-u>Unite buffer file_mru<CR>

" バッファ一覧
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
" ファイル一覧
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
" レジスタ一覧
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
" 最近使用したファイル一覧
nnoremap <silent> ,um :<C-u>Unite file_mru<CR>
" ブックマーク一覧
nnoremap <silent> ,uc :<C-u>Unite bookmark<CR>
" ブックマーク追加
nnoremap <silent> ,ud :<C-u>UniteBookmarkAdd<CR>
" 全部乗せ
nnoremap <silent> ,ua :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>

"file current_dir
"noremap <silent> ,ufc :<C-u>Unite file -buffer-name=file<CR>
noremap <silent> ,ufc :<C-u>Unite file<CR>
noremap <silent> ,ufcr :<C-u>Unite file_rec -buffer-name=file_rec<CR>

" unite.vim上でのキーマッピング
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
  " 単語単位からパス単位で削除するように変更
  imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
  " ESCキーを2回押すと終了する
  nmap <silent><buffer> <ESC><ESC> q
  imap <silent><buffer> <ESC><ESC> <ESC>q
endfunction

" unite-plugins
nnoremap <silent> ,uh :<C-u>Unite help<CR>
" Markdownなどを解析してアウトラインを表示してくれる、むちゃくちゃ便利
" via http://qiita.com/items/2cebdb805f45e7b4b901
nnoremap <silent> ,uo :<C-u>Unite outline<CR>


""" twitvim
let twitvim_count = 200
nnoremap ,tp :<C-u>PosttoTwitter<CR>
nnoremap ,tf :<C-u>FriendsTwitter<CR><C-w>j
nnoremap ,tu :<C-u>UserTwitter<CR><C-w>j
nnoremap ,tr :<C-u>RepliesTwitter<CR><C-w>j
nnoremap ,tn :<C-u>NextTwitter<CR>

autocmd FileType twitvim call s:twitvim_my_settings()
function! s:twitvim_my_settings()
  set nowrap
endfunction


" vim-quickrun
let g:quickrun_config = {}
" markdown
" let g:quickrun_config['markdown'] = {
" \ 'command': 'bluecloth',
" \ 'exec': '%c -f %s'
" \ }
" ブラウザで開く場合
" let g:quickrun_config['markdown'] = {
" \ 'outputter': 'browser',
" \ 'cmdopt': '-s'
" \ }
" ブラウザで開く
nnoremap \m :!perl ~/Dropbox/code/markdown/Markdown.pl --html4tags "%" > /tmp/__markdown.html; open /tmp/__markdown.html<CR><CR>

" CoffeeScript
let g:quickrun_config['coffee'] = {'command' : 'coffee', 'exec' : ['%c -cbp %s']}
nnoremap <silent>,q :<C-u>QuickRun<CR>

" tagbar
"map lo :TagbarOpen<CR>
"map lt :TagbarToggle<CR>
nnoremap <silent> ,lo :<C-u>TagbarOpen<CR>
nnoremap <silent> ,lt :<C-u>TagbarToggle<CR>

" taglist.vim objective-cに対応
let tlist_objc_settings='objc;P:protocols;i:interfaces;I:implementations;M:instance methods;C:implementation methods;Z:protocol methods'
let Tlist_Ctags_Cmd = "/Applications/MacVim.app/Contents/MacOS/ctags" "ctagsのパス
let Tlist_Show_One_File = 1 "現在編集中のソースのタグしか表示しない
let Tlist_Exit_OnlyWindow = 1 "taglistのウィンドーが最後のウィンドーならばVimを閉じる
" let Tlist_Use_Right_Window = 1 "右側でtaglistのウィンドーを表示
nnoremap <silent> ,tl :TlistToggle<CR>

" Gundo
nnoremap <F5> :GundoToggle<CR>

" EazyMotion
let g:EasyMotion_leader_key = ','

" for Fugitive {{{
nnoremap <Space>gd :<C-u>Gdiff<Enter>
nnoremap <Space>gs :<C-u>Gstatus<Enter>
nnoremap <Space>gl :<C-u>Glog<Enter>
nnoremap <Space>ga :<C-u>Gwrite<Enter>
nnoremap <Space>gc :<C-u>Gcommit<Enter>
nnoremap <Space>gC :<C-u>Git commit --amend<Enter>
nnoremap <Space>gb :<C-u>Gblame<Enter>
" }}}

" CoffeeScript
autocmd BufWritePost *.coffee silent CoffeeMake! -cb | cwindow | redraw!

" surround.vim
" ssで選択範囲を指定文字でくくる
nmap ss <Plug>Yssurround

if !has("win32") && !has("win64")
  " vimshell
  " シェルを起動
  nnoremap <silent> ,vs :VimShell<CR>
  " Scalaを起動
  nnoremap <silent> ,vscala :VimShellInteractive scala<CR>
  " SpiderMonkeyを起動
  nnoremap <silent> ,vjs :VimShellInteractive js<CR>
endif

" コメントアウトを切り替えるマッピング例
"nmap <Leader>c <Plug>(caw:I:toggle)
"vmap <Leader>c <Plug>(caw:I:toggle)
nmap ,c <Plug>(caw:I:toggle)
vmap ,c <Plug>(caw:I:toggle)

if has("gui_macvim") || has("win32") || has("win64")
  " indent-guides.vim
  let g:indent_guides_enable_on_vim_startup = 1
  let g:indent_guides_color_change_percent = 30
  let g:indent_guides_guide_size = 1
endif

" VimFiler
nnoremap <F3> :VimFiler -buffer-name=explorer -split -winwidth=45 -toggle -no-quit<Cr>
autocmd! FileType vimfiler call g:my_vimfiler_settings()
function! g:my_vimfiler_settings()
  nmap     <buffer><expr><Cr> vimfiler#smart_cursor_map("\<Plug>(vimfiler_expand_tree)", "\<Plug>(vimfiler_edit_file)")
  nnoremap <buffer>s          :call vimfiler#mappings#do_action('my_split')<Cr>
  nnoremap <buffer>v          :call vimfiler#mappings#do_action('my_vsplit')<Cr>
endfunction

let my_action = { 'is_selectable' : 1 }
function! my_action.func(candidates)
  wincmd p
  exec 'split '. a:candidates[0].action__path
endfunction
call unite#custom_action('file', 'my_split', my_action)

let my_action = { 'is_selectable' : 1 }
function! my_action.func(candidates)
  wincmd p
  exec 'vsplit '. a:candidates[0].action__path
endfunction
call unite#custom_action('file', 'my_vsplit', my_action)


" レインボーサイクロン
nmap c/ <Plug>(rc_search_forward)
nmap c? <Plug>(rc_search_backward)
nmap c* <Plug>(rc_search_forward_with_cursor)
nmap c# <Plug>(rc_search_backward_with_cursor)
nmap cn <Plug>(rc_search_forward_with_last_pattern)
nmap cN <Plug>(rc_search_backward_with_last_pattern)
" ハイライトをクリア
" :RCReset

" メモ
map <Leader>mn  :MemoNew<CR>
map <Leader>ml  :MemoList<CR>
map <Leader>mg  :MemoGrep<CR>


" vim-smartchr
" inoremap <expr> = smartchr#loop('=', ' = ', ' == ')
inoremap <expr> , smartchr#loop(',', ', ', ' => ')

" SrcExpl
" // The switch of the Source Explorer
nmap <F7> :SrcExplToggle<CR>

" // Set the height of Source Explorer window
let g:SrcExpl_winHeight = 8

" // Set 100 ms for refreshing the Source Explorer
let g:SrcExpl_refreshTime = 100

" // Set "Enter" key to jump into the exact definition context
let g:SrcExpl_jumpKey = "<ENTER>"

" // Set "Space" key for back from the definition context
let g:SrcExpl_gobackKey = "<SPACE>"

" // In order to Avoid conflicts, the Source Explorer should know what plugins
" // are using buffers. And you need add their bufname into the list below
" // according to the command ":buffers!"
let g:SrcExpl_pluginList = [
        \ "__Tag_List__",
        \ "_NERD_tree_",
        \ "Source_Explorer"
    \ ]

" // Enable/Disable the local definition searching, and note that this is not
" // guaranteed to work, the Source Explorer doesn't check the syntax for now.
" // It only searches for a match with the keyword according to command 'gd'
let g:SrcExpl_searchLocalDef = 1

" // Do not let the Source Explorer update the tags file when opening
let g:SrcExpl_isUpdateTags = 0

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to
" //  create/update a tags file
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."

" // Set "<F12>" key for updating the tags file artificially
let g:SrcExpl_updateTagsKey = "<F12>"


" Trinity
" Open and close all the three plugins on the same time
nmap <F8>  :TrinityToggleAll<CR>

" Open and close the Source Explorer separately
nmap <F9>  :TrinityToggleSourceExplorer<CR>

" Open and close the Taglist separately
nmap <F10> :TrinityToggleTagList<CR>

" Open and close the NERD Tree separately
" o - ディレクトリを開く or ファイルを開く。
" C - ルートの変更 現在のディレクトリに。
" u - ルートを上げる。
nmap <F11> :TrinityToggleNERDTree<CR>


" Simple-Javascript-Indenter
" この設定入れるとshiftwidthを1にしてインデントしてくれる
let g:SimpleJsIndenter_BriefMode = 1
" この設定入れるとswitchのインデントがいくらかマシに
let g:SimpleJsIndenter_CaseIndentLevel = -1

" open-browser {{{
" refs http://d.hatena.ne.jp/tyru/20100619/git_push_vim_plugins_to_github
nmap <Space>w <Plug>(openbrowser-open)
vmap <Space>w <Plug>(openbrowser-open)
"}}}
