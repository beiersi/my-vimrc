set nocompatible
filetype off

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

Bundle 'mattn/zencoding-vim'

Bundle 'kchmck/vim-coffee-script'

Bundle 'blackboard.vim'

Bundle 'bbommarito/vim-slim'

Bundle 'tpope/vim-rvm'
Bundle 'tpope/vim-rails'

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
" 设置菜单编码  
" source $VIMRUNTIME/delmenu.vim
" source $VIMRUNTIME/menu.vim
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
highlight type gui=none
" 查找结果高亮度显示  
set hlsearch  
" 查找不区分大小写
set is
" tab宽度  
set tabstop=4  
set cindent shiftwidth=4  
set autoindent shiftwidth=4
set expandtab
" 设定特殊tab宽度
" autocmd BufNewFile,BufRead *.php set expandtab tabstop=4 shiftwidth=4
autocmd BufNewFile,BufRead *.html,*.htm,*.css,*.js,*.phtml set noexpandtab tabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.rb set tabstop=2 shiftwidth=2 expandtab
" 设定字体字号
set guifont=DejaVu\ Sans\ Mono\ 10 

" 把 F8 映射到 启动NERDTree插件  
map <F8> :NERDTreeToggle<CR>  

" 窗口之间移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

if !exists("$rvm_path") && isdirectory(expand('/usr/local/rvm'))
    let $rvm_path = expand('/usr/local/rvm')
    let $PATH .= ':' . $rvm_path . '/bin'
end

" rvm.vim
" set statusline=[%n]\ %<%.99f\ %h%w%m%r%y%{exists('g:loaded_rvm')?rvm#statusline():''}%=%-16(\ %l,%c-%v\ %)%P 
" set statusline+=%{rvm#statusline()}
