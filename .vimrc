" 设置vim保存的历史命令为 200
set history=200
" 绑定 <C+l> 为取消高亮显示
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
" 定义快捷键的前缀，即<Leader>
let mapleader=";"
" 开启文件类型侦测
"filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on

" 接下来这这一段将定义快捷键
" 定义快捷键到行首和行尾
nmap lb 0
nmap le $ 
"设置快捷键 将选中文本复制到系统粘贴板
vnoremap <Leader>y "+y
" 设置快捷键 将系统剪贴板内容粘贴至 vim 
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j

" 显示行号
set number

" solarized 颜色方案
if has('gui_running')
	set background=dark
else
	set background=dark
endif

" 营造专注的气氛
" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l 
set guioptions-=L 
set guioptions-=r
set guioptions-=R 
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" 总是显示状态栏
set laststatus=2

" 显示光标当前位置
set ruler

" 高亮当前显示 列
set cursorline
set cursorcolumn

" 高亮显示搜索结果
set hlsearch
" 高亮第一个搜索结果
set incsearch
" 设置查询时大小写不敏感，智能提示
set ignorecase smartcase
" 设置 gvim 显示字体
"set guifont=YaHei\ Consolas\ Hybrid\9.5 

" 禁止折行
set nowrap

" 设置状态栏主题风格
let g:Powerlin_colorscheme='solarized256'

" 开启语法高亮功能
syntax enable
" 允许指定语法高亮配色方案 替换默认方案
syntax on
" 自适应不同语言的只能缩进
filetype indent on

" 将制表符扩展为空格
set expandtab
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 设置制表符占用空格数
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" 下便开始 才是 插件的安装

" 使用vundle 管理插件
set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

"my Bundle here:
"
" original repos on github
Bundle 'tmhedberg/matchit'
Bundle 'altercation/vim-colors-solarized'
    colorscheme solarized
Bundle 'sukima/xmledit'
Bundle 'Lokaltog/vim-powerline'
Bundle 'sjl/gundo.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'klen/python-mode'
Bundle 'tpope/vim-surround'
Bundle 'SirVer/ultisnips'
" 这是 收藏标签 插件
Bundle 'kshenoy/vim-signature'
    let g:SignatureMap = {
            \ 'Leader'             :  "m",
            \ 'PlaceNextMark'      :  "m,",
            \ 'ToggleMarkAtLine'   :  "m.",
            \ 'PurgeMarksAtLine'   :  "m-",
            \ 'DeleteMark'         :  "dm",
            \ 'PurgeMarks'         :  "mda",
            \ 'PurgeMarkers'       :  "m<BS>",
            \ 'GotoNextLineAlpha'  :  "']",
            \ 'GotoPrevLineAlpha'  :  "'[",
            \ 'GotoNextSpotAlpha'  :  "`]",
            \ 'GotoPrevSpotAlpha'  :  "`[",
            \ 'GotoNextLineByPos'  :  "]'",
            \ 'GotoPrevLineByPos'  :  "['",
            \ 'GotoNextSpotByPos'  :  "mn",
            \ 'GotoPrevSpotByPos'  :  "mp",
            \ 'GotoNextMarker'     :  "[+",
            \ 'GotoPrevMarker'     :  "[-",
            \ 'GotoNextMarkerAny'  :  "]=",
            \ 'GotoPrevMarkerAny'  :  "[=",
            \ 'ListLocalMarks'     :  "ms",
            \ 'ListLocalMarkers'   :  "m?"
            \ }

Bundle 'scrooloose/syntastic'
Bundle 't9md/vim-quickhl'
Bundle 'scrooloose/nerdcommenter'
"..................................
" vim-scripts repos
Bundle 'YankRing.vim'
Bundle 'vcscommand.vim'
Bundle 'ShowPairs'
Bundle 'SudoEdit.vim'
Bundle 'EasyGrep'
Bundle 'VOoM'
Bundle 'VimIM'
"..................................
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
"......................................
filetype plugin indent on

" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1

" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" 基于缩进或语法进行代码折叠
" set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时 关闭代码折叠
set nofoldenable
