set history=50
set	ruler
set showcmd
set incsearch
set backspace=indent,eol,start whichwrap+=<,>,[,]

vnoremap <BS> d

" CTRL-X and SHIFT-Del are Cut
vnoremap <C-X> "+x
vnoremap <S-Del> "+x

" CTRL-C and CTRL-Insert are Copy
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y

" CTRL-V and SHIFT-Insert are Paste
map <C-V> "+gP
map <S-Insert> "+gP

cmap <C-V> <C-R>+
cmap <S-Insert> <C-R>+

exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']

imap <S-Insert> <C-V>

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
" 设定特殊tab宽度
autocmd BufNewFile,BufRead *.html,*.htm,*.css,*.js set noexpandtab tabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.rb set tabstop=2 shiftwidth=2 expandtab

" rvm.vim
" set statusline=[%n]\ %<%.99f\ %h%w%m%r%y%{exists('g:loaded_rvm')?rvm#statusline():''}%=%-16(\ %l,%c-%v\ %)%P 

filetype plugin indent on  
" 把 F8 映射到 启动NERDTree插件  
map <F8> :NERDTreeToggle<CR>  

" 标签之间移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" set shell=/bin/sh
" !/usr/local/rvm/scripts/rvm
