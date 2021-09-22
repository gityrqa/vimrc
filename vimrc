set nocompatible
"兼容旧版本
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
"让vim识别不同的文件格式
set mouse=a
"让vim可以使用鼠标

"set tabstop shiftwidth softtabstop expandtab 用于设置tab键的宽度等

set autochdir
" vim在当前目录下执行操作

map R :source $MYVIMRC<CR>
"重新加载配置文件
syntax on
" 高亮语法
set number
" 打开行号
" set 设置一个属性
set wrap
" 自动折叠们还是同一行
set showcmd
" 显示cmd信息
set wildmenu
"命令模式：自动补全;使用tab键显示和切换
set fencs=utf-8,gbk

"-----------------搜索--------------
exec "nohlsearch"
" exec 系统开始时，读取配置文件时运行取消高亮的指令，
set hlsearch
" 高亮搜索，是默认设置
set incsearch
" 输入的同时，高亮;是用不了
set ignorecase
" 忽略大小写
set smartcase
" 智能搜索，小写忽略大小写，大写不忽略
set scrolloff=5
" 设置光标上下始终显示5行
 " 光标无效果
" Set cursor shape and color
if &term =~ "xterm"
    " INSERT mode
    let &t_SI = "\<Esc>[6 q" . "\<Esc>]12;blue\x7"
    " REPLACE mode
    let &t_SR = "\<Esc>[3 q" . "\<Esc>]12;black\x7"
    " NORMAL mode
    let &t_EI = "\<Esc>[2 q" . "\<Esc>]12;green\x7"
endif
" 1 -> blinking block  闪烁的方块
" 2 -> solid block  不闪烁的方块
" 3 -> blinking underscore  闪烁的下划线
" 4 -> solid underscore  不闪烁的下划线
" 5 -> blinking vertical bar  闪烁的竖线
" 6 -> solid vertical bar  不闪烁的竖线
"设置光标样式,测试结果无效果

nnoremap <C-/> :nohlsearch<CR>
" 取消搜索 高亮
"----------------搜索设置结束-----------

"-------------分屏-------------------
nnoremap wl <C-w>v<CR><C-w>l<CR>
"向右分屏w光标移动到右屏
nnoremap wh <C-w>v<CR><C-w>h<CR>
nnoremap wk <C-w>s<CR><C-w>k<CR>
nnoremap wj <C-w>s<CR><C-w>j<CR>
nnoremap <left> <C-w>h<CR>
nnoremap <right> <C-w>l<CR>
nnoremap <down> <C-w>j<CR>
nnoremap <up> <C-w>k<CR>
"光标跳转
nnoremap <S-up> :res +5<CR>
nnoremap <S-down> :res -5<CR>
nnoremap <S-left> :vertical res -5<CR>
nnoremap <S-right> :vertical res +5<CR>
"---------分屏设置结束--------------
"------------分页-------------------
nnoremap te :tabe<CR>
"创建新标签
nnoremap TT :-tabnext<CR>
nnoremap tt :+tabnext<CR>
"标签页切换

"------------分页设置结束-----------

" -------插件-----------------------
call plug#begin('d:\vim\vim82\plugged')
" 生成底部状态栏夹
Plug 'vim-airline/vim-airline'
" 修改配色方案
Plug 'connorholyday/vim-snazzy'
"color 修改配色方案，SnazzyTransparent设置为透明背景
Plug 'preservim/nerdtree'
"文件目录插件
Plug 'ycm-core/YouCompleteMe'
call plug#end()


"各插件配置信息
"===nerdtree===
nnoremap ff :NERDTreeToggle<CR>
"let NERDTreeMapOpenInTab = "t"
"let NERDTreeMapOpenInSplit = "w"
"let NERDTreeMapOpenInVSplit="w"
"===snazzy===
colorscheme snazzy
let g:SnazzyTransparent = 1


"--------chajian--------------------




"-------------键位设置--------------
"nore 表示不递归
"i 表示insert模式下
"n 表示normal模式下
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap jj <Esc>
nnoremap <C-j> 5j
nnoremap <C-k> 5k
inoremap <Esc> <Nop>
nnoremap L $
nnoremap H ^
inoremap ll <Right>
inoremap hh <left>
nnoremap S :w<CR>
nnoremap Q :q<CR>
"-----------------------------------
" vim 操作+动作。y3l,d3w,ci",ciw……
"------------------------------------
"
