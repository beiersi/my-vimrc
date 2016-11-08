set nocompatible

filetype off

" 判断操作系统
let g:is_windows = 0
let g:is_mac = 0

if (has("win32") || has("win64") || has("win32unix"))
    let g:is_windows = 1
elseif (has("mac"))
    let g:is_mac = 1
endif

" 判断是否gui
if (has("gui_running"))
    let g:is_gui = 1
else
    let g:is_gui = 0
endif

" smarty 定界符
let g:smarty_left_delim = '{%'
let g:smarty_right_delim = '%}'

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'bufexplorer.zip'

Bundle 'Raimondi/delimitMate'

Bundle 'kien/ctrlp.vim'

Bundle 'L9'
Bundle 'FuzzyFinder'

Bundle 'scrooloose/nerdtree'

Bundle 'msanders/snipmate.vim'

Bundle 'ervandew/supertab'

Bundle 'mattn/emmet-vim'

Bundle 'mattn/webapi-vim'

Bundle 'kchmck/vim-coffee-script'

Bundle 'blackboard.vim'

Bundle 'slim-template/vim-slim'

Bundle 'nono/vim-handlebars'

Bundle 'pangloss/vim-javascript'

Bundle 'AnsiEsc.vim'

" Bundle 'heartsentwined/vim-ember-script'

Bundle 'heartsentwined/vim-emblem'

Bundle 'blueyed/smarty.vim'

if !g:is_windows
    Bundle 'tpope/vim-rvm'
    Bundle 'tpope/vim-rails'
endif

filetype plugin indent on

set history=50
set ruler
set showcmd
set incsearch
set backspace=indent,eol,start whichwrap+=<,>,[,]


set bsdir=buffer  
" 设置编码  
set encoding=utf-8
"set langmenu=zh_CN.UTF-8
" 设置提示信息编码
language message zh_CN.UTF-8
" 设置文件编码  
set fileencoding=utf-8  
" 设置文件编码检测类型及支持格式  
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936  
" 设置开启语法高亮  
syntax on  
"显示行号  
set number
"指示当前列
" set cuc
"指示当前行
set cul
" 配色方案
colorscheme blackboard
" 关闭粗体显示
" highlight type gui=none
" 查找结果高亮度显示  
set hlsearch  
" 查找不区分大小写
set is
" tab宽度  
set tabstop=2  
set cindent shiftwidth=2  
set autoindent shiftwidth=2
set expandtab
" 设定特殊tab宽度
autocmd BufNewFile,BufRead *.php set expandtab tabstop=4 shiftwidth=4
autocmd BufNewFile,BufRead *.html,*.htm,*.css,*.scss,*.phtml,*.erb set noexpandtab tabstop=2 cindent shiftwidth=2
autocmd BufNewFile,BufRead *.rb,*.erb,*.coffee,*.js,*.tpl set tabstop=2 cindent shiftwidth=2 expandtab
autocmd BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars noexpandtab tabstop=2 cindent shiftwidth=2

" 记录编辑过的文件位置
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")|execute("normal `\"")|endif

" 设定字体字号
if g:is_gui
    if g:is_windows
        set guifont=DejaVu\ Sans\ Mono:h14 

        " windows 菜单编码设定
        source $VIMRUNTIME/delmenu.vim
        source $VIMRUNTIME/menu.vim
    elseif g:is_mac
        set guifont=Monaco:h14
    else
        set guifont=DejaVu\ Sans\ Mono\ 14
    end
end

if has("gui_macvim")
  set transparency=14
end

" 把 F8 映射到 启动NERDTree插件  
map <F8> :NERDTreeToggle<CR>  

" 窗口之间移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" 设定rvm_path
if !g:is_windows && !exists("$rvm_path") && isdirectory(expand('/usr/local/rvm'))
  " let $rvm_path = expand('/usr/local/rvm')
  " let $PATH .= ':' . $rvm_path . '/bin'
end

" SuperTabMappingTabLiteral
let g:SuperTabMappingTabLiteral = '<s-space>'

" rvm.vim
" set statusline=[%n]\ %<%.99f\ %h%w%m%r%y%{exists('g:loaded_rvm')?rvm#statusline():''}%=%-16(\ %l,%c-%v\ %)%P 
" set statusline+=%{rvm#statusline()}

