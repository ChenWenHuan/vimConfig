"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This vimrc is based on the vimrc by Amix:
"       http://amix.dk/vim/vimrc.html
" You can find the latest version on:
"       http://github.com/easwy/share/tree/master/vim/vimrc/
"
" Maintainer:  Easwy Yang
"              Wenhuan Modified This for fit
" Last Change: Mon Oct 25 16:04:31 CST 2010
" Homepage:    http://easwy.com/
" Version:     0.2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""" 一般设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    syntax enable

    set sw=4
    set ts=4
    set et
    set smartindent
    set lbr
    set fo+=mB

    "显示括号配对情况。 打开这个选项后， 当输入后括号 (包括小括号、中括号、大括号)
"的时候， 光标会跳回前括号片刻， 然后跳回来， 以此显示括号的配对情况。
    set sm

    "set selection=inclusive
    " Filename completion
    "
    "   wildmenu : command-line completion operates in an enhanced mode
    "   wildignore : A file that matches with one of these
    "              patterns is ignored when completing file or directory names.
    "---------------------------------------------------------------------------
    "
    set wildmenu
    set wildignore=*.bak,*.o,*.e,*~,*.obj,*.exe

    set mousemodel=popup

    " 自动缩进
    set autoindent
    set cindent

    " Tab键的宽度
    set tabstop=4

    " 统一缩进为4
    set softtabstop=4
    set shiftwidth=4

    " 不要用空格代替制表符
    "set noexpandtab

    " 在行和段开始处使用制表符
    "set smarttab

    " 显示行号
    set number

    " 历史记录数
    set history=1000

    "搜索逐字符高亮
    set hlsearch
    set incsearch

    "语言设置
    set langmenu=zh_CN.UTF-8
    set helplang=cn

    " 总是显示状态行
    set cmdheight=2

    " 侦测文件类型
    filetype on

    " 载入文件类型插件
    filetype plugin on

    " 为特定文件类型载入相关缩进文件
    filetype indent on

    " 保存全局变量
    set viminfo+=!

    " 带有如下符号的单词不要被换行分割
    set iskeyword+=_,$,@,%,#,-

    " 字符间插入的像素行数目
    set textwidth=79    " Maximum width of text that is being inserted. A longer
                        " line will be broken after white space to get this width.

    set smartcase       " Override the 'ignorecase' option if the search pattern
                        " contains upper case characters.
                "
    "set paste                  "防止粘贴的时候位置不正确 vim才有

    set background=dark
    set t_Co=256
   " colo molokai
    colorscheme solarized

    set whichwrap=b,s,<,>,[,] " 光标从行首和行末时可以跳到另一行去
    set linebreak       " 整词换行
    set hidden
    set autoread              " read open files again when changed outside Vim

    set updatetime=100         "更新文件内容时间
    "共享剪贴板  
    "set clipboard+=unnamed 
    "自动保存
    set autowrite
    set cursorline              " 突出显示当前行
    set magic                   " 设置魔术
    set guioptions-=T           " 隐藏工具栏
    set guioptions-=m           " 隐藏菜单栏
    ""set foldcolumn=0
    ""set foldmethod=indent 
    ""set foldlevel=3 

    " 去掉输入错误的提示声音
    set noeb

    " 在处理未保存或只读文件的时候，弹出确认
    set confirm

    "禁止生成临时文件
    set nobackup
    set noswapfile

    "搜索忽略大小写
    set ignorecase

    set linespace=0

    " 使回格键（backspace）正常处理indent, eol, start等
    set backspace=2

    " 允许backspace和光标键跨越行边界
    set whichwrap+=<,>,h,l

    " 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
    set mouse=a
    "set mouse=v

    set selection=exclusive
    set selectmode=mouse,key

    " 通过使用: commands命令，告诉我们文件的哪一行被改变过
    set report=0

    " 在被分割的窗口间显示空白，便于阅读
    set fillchars=vert:\ ,stl:\ ,stlnc:\

    " 匹配括号高亮的时间（单位是十分之一秒）
    set matchtime=1

    "Set mapleader
    let mapleader=","
    let g:mapleader = ","

    if has("win32") || has("win64")
        set directory=$TMP
        set backupdir=$TMP
    else
        set directory=~/.vim/backup,/tmp
        set backupdir=~/.vim/backup,/tmp
    end

    "Do not redraw, when running macros.. lazyredraw
    set lz

    "Set backspace
    set backspace=eol,start,indent

    "Bbackspace and cursor keys wrap to
    "set whichwrap+=<,>,h,l
    set whichwrap+=<,>

    "No sound on errors.
    set noerrorbells
    set novb t_vb=

    "markdown配置
    au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=mkd
    au BufRead,BufNewFile *.{go}   set filetype=go
    au BufRead,BufNewFile *.{js}   set filetype=javascript


    "flag problematic whitespace (trailing and spaces before tabs)
    ""Note you get the same by doing let c_space_errors=1 but
    "this rule really applys to everything.
    "

    "\ze sets end of match so only spaces highlighted
    "use :set list! to toggle visible whitespace on/off
    "缩进线设置，这里你可以把“|”改为你喜欢的缩进线符号，推荐使用“:”或者“.”。
    " 这里要注意的是，缩进线只有对Tab缩进有效，而空格缩进无效
    set listchars=tab:\'\ ,trail:@,extends:>
    "set listchars=tab:>-
    "set lcs=tab::-,trail:@
    "set lcs=tab:>-,eol:<,nbsp:%
    "set lcs=extends:>,precedes:<

    " r 确保 Vim 在回车后自动追加注释符号
    " mM 确保Vim 能在中文字符之间折行而不要求空格的存在
    set formatoptions+=rmM
    "
    "设置自动补全下拉菜单项目数,7个是有根据的,在牛逼的人脑中最多存7个项目.
    if version>=700
            set pumheight=7
    endif

    "显示括号配对情况。 打开这个选项后， 当输入后括号 (包括小括号、中括号、大括号)
    "的时候， 光标会跳回前括号片刻， 然后跳回来， 以此显示括号的配对情况。
    set sm

    set so=7 "Set 7 lines to the curors - when moving vertical..


    ""--------------------------------------------------------------------------
    " 显示相关
    ""--------------------------------------------------------------------------
    set cul "高亮光标所在行
    set cuc
    set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示
    set go=             " 不要图形按钮
    "color  DevC++    " 设置背景主题
    "color ron      "ron      设置背景主题
    "color torte     " 设置背景主题
    "set guifont=Courier_New:h10:cANSI   " 设置字体
    "autocmd InsertLeave * se nocul  " 用浅色高亮当前行
    autocmd InsertEnter * se cul    " 用浅色高亮当前行
    set ruler           " 显示标尺
    set showcmd         " 输入的命令显示出来，看的清楚些
    "set whichwrap+=<,>,h,l   " 允许backspace和光标键跨越行边界(不建议)
    set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离
    set foldenable      " 允许折叠
    set foldmethod=manual   " 手动折叠

    " 不要使用vi的键盘模式，而是vim自己的
    set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局

    " 显示中文帮助
    if version >= 603
        set helplang=cn
        set encoding=utf-8
    endif

    "----------------------------------------------------------------------------
    " 设置命令行和状态栏
      function! CurDir()
         let curdir = substitute(getcwd(), '/home/juda/', "~/", "g")
         return curdir
      endfunction

    set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c

    set cmdheight=1             " 设定命令行的行数为 1
    set laststatus=2            " 显示状态栏 (默认值为 1, 无法显示状态栏) " 启动显示状态行(1),总是显示状态行(2)  
    "set statusline=%F%m%r,%Y,%{&fileformat}" " " ASCII="%b,HEX="%B" " " %l,%c%V" %p%%" " " [" %L" lines" in" all" ]
    "set statusline=\ %F%m%w\ [FORMAT=%{&ff}]\ %r%h\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
                                " 设置在状态行显示的信息如下：
                                " %F    当前文件名
                                " %m    当前文件修改状态
                                " %r    当前文件是否只读
                                " %Y    当前文件类型
                                " %{&fileformat}
                                "       当前文件编码
                                " %b    当前光标处字符的 ASCII 码值
                                " %B    当前光标处字符的十六进制值
                                " %l    当前光标行号
                                " %c    当前光标列号
                                " %V    当前光标虚拟列号 (根据字符所占字节数计算)
                                " %p    当前行占总行数的百分比
                                " %%    百分号
                                " %L    当前文件总行数
    "----------------------------------------------------------------------------


    "
    "-------------------------------------------------------------------------------
    " print options  (pc = percentage of the media size)
    "-------------------------------------------------------------------------------
    set printoptions=left:8pc,right:3pc

    "ARM 汇编高亮
    let asmsyntax='armasm'
    let filetype_inc='armasm'

    "编码识别
    let &termencoding=&encoding
    "set fileencodings=utf8,gbk,ucs-bom,cp936

    " For multi-byte character support (CJK support, for example):
    set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1,default

    au FileType php setlocal dict+=~/.vim/dict/php_funclist.dict
    au FileType css setlocal dict+=~/.vim/dict/css.dict
    au FileType c setlocal dict+=~/.vim/dict/c.dict
    au FileType cpp setlocal dict+=~/.vim/dict/cpp.dict
    au FileType scale setlocal dict+=~/.vim/dict/scale.dict
    au FileType javascript setlocal dict+=~/.vim/dict/javascript.dict


    "syntastic相关
    execute pathogen#infect()
    let g:syntastic_python_checkers=['pylint']
    let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
    "golang
    "Processing... % (ctrl+c to stop)
    let g:fencview_autodetect=0
    set rtp+=$GOROOT/misc/vim

    " minibufexpl插件的一般设置
    let g:miniBufExplMapWindowNavVim = 1
    let g:miniBufExplMapWindowNavArrows = 1
    let g:miniBufExplMapCTabSwitchBufs = 1
    let g:miniBufExplModSelTarget = 1
    nmap tl :Tlist<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""" Auto command relative自动命令相关
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "vim记住上次打开的地方
        autocmd BufReadPost *
                    \ if line("'\"") > 1 && line("'\"") <= line("$") |
                    \ exe "normal! g`\"" |
                    \ endif

        "set fdm=syntax
        "
    "当打开vim且没有文件时自动打开NERDTree
        autocmd vimenter * if !argc() | NERDTree | endif

    " 只剩 NERDTree时自动关闭
        autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

    "列出当前目录文件
        map <F3> :NERDTree<CR>

    "打开树状文件目录
        map <C-F3> \be
        :autocmd BufRead,BufNewFile *.dot map <F5> :w<CR>:!dot -Tjpg -o %<.jpg % && eog %<.jpg  <CR><CR> && exec "redr!"

    " quickfix模式
        autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>

    "python补全
        let g:pydiction_location = '~/.vim/after/complete-dict'
        let g:pydiction_menu_height = 20

        autocmd FileType python set omnifunc=pythoncomplete#Complete

    "---------------------------------------------------------------------------
    " Change the working directory to the directory containing the current file
    "---------------------------------------------------------------------------
    "if has("autocmd")
    "  autocmd BufEnter * :lchdir %:p:h
    "endif " has("autocmd")
    "
    "---------------------------------------------------------------------------

    "au BufWritePost *.c,*.cpp,*.cc,*.h !~/.vim/cs.sh
    autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
    autocmd InsertLeave * if pumvisible() == 0|pclose|endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" map 映射相关
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "rkdown to HTML  
    nmap md :!~/.vim/markdown.pl % > %.html <CR><CR>
    nmap fi :!firefox %.html & <CR><CR>

    "将tab替换为空格
    nmap tt :%s/\t/    /g<CR>

    nmap  <silent> <F2>    :set list<CR>
    highlight RedundantSpaces term=standout ctermbg=red guibg=red
    match RedundantSpaces /\s\+$\| \+\ze\t/

    "---------------------------------------------------------------------------
    " Fast switching between buffers
    " The current buffer will be saved before switching to the next one.
    " Choose :bprevious or :bnext
    "---------------------------------------------------------------------------
    "
     map  <silent> <s-tab>  <Esc>:if &modifiable && !&readonly &&
         \                  &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
    imap  <silent> <s-tab>  <Esc>:if &modifiable && !&readonly &&
         \                  &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
    "
    "---------------------------------------------------------------------------
    " Leave the editor with Ctrl-q : Write all changed buffers and exit Vim
    "---------------------------------------------------------------------------
    nmap  <C-q>    :wqa<CR>
    "

    "全工程grep
    nnoremap <silent> <F3> :Grep<CR>


    "---------------------------------------------------------------------------
    "键盘命令
    "---------------------------------------------------------------------------
    :nmap <silent> <F9> <ESC>:Tlist<RETURN>
    map! <C-Z> <Esc>zzi
    map! <C-O> <C-Y>,
    map <C-A> ggVG$"+y
    map <F12> gg=G
    map <C-w> <C-w>w
    imap <C-k> <C-y>,
    imap <C-j> <ESC>
    " 选中状态下 Ctrl+c 复制
    "map <C-v> "*pa
    imap <C-v> <Esc>"*pa
    imap <C-a> <Esc>^
    imap <C-e> <Esc>$
    vmap <C-c> "+y


    "去空行
    nnoremap <F2> :g/^\s*$/d<CR>

    "比较文件
    nnoremap <C-F2> :vert diffsplit

    "Fast saving
    nmap <silent> <leader>ww :w<cr>
    nmap <silent> <leader>wf :w!<cr>

    "Fast quiting
    nmap <silent> <leader>wq :wq<cr>
    nmap <silent> <leader>qf :q!<cr>
    nmap <silent> <leader>qq :q<cr>
    nmap <silent> <leader>qa :qa<cr>

    "Fast remove highlight search
    nmap <silent> <leader><cr> :noh<cr>

    "Fast redraw
    nmap <silent> <leader>rr :redraw!<cr>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""新文件标题
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java,*.py exec ":call SetTitle()"
""定义函数SetTitle，自动插入文件头
func SetTitle()
    "如果文件类型为.sh文件
    if &filetype == 'sh'
        call setline(1,"\#!/bin/bash")
        call append(line("."), "")
    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# coding=utf-8")
        call append(line(".")+1, "")
"    elseif &filetype == 'mkd'
"        call setline(1,"<head><meta charset=\"UTF-8\"></head>")
    else
        "call setline(1, "/*************************************************************************")
        "call append(line("."), "    > File Name: ".expand("%"))
        "call append(line(".")+1, "    > Author: cheney")
        "call append(line(".")+2, "    > Mail: chenwenhuan163@163.com ")
        "call append(line(".")+3, "    > Created Time: ".strftime("%c"))
        "call append(line(".")+4, " ************************************************************************/")
        "call append(line(".")+5, "")
    endif
    if &filetype == 'cpp'
        call append(line(".")+6, "#include<iostream>")
        call append(line(".")+7, "using namespace std;")
        call append(line(".")+8, "")
    endif
    if &filetype == 'c'
        call append(line(".")+6, "#include<stdio.h>")
        call append(line(".")+7, "#include<stdlib.h>")
        call append(line(".")+8, "")
    endif
"    if &filetype == 'java'
"        call append(line(".")+6,"public class ".expand("%"))
"        call append(line(".")+7,"")
"    endif
    "新建文件后，自动定位到文件末尾
endfunc
autocmd BufNewFile * normal G


"C，C++ 按F5编译运行
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        exec "!time python2.7 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
"        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
    endif
endfunc
"C,C++的调试
map <F8> :call Rungdb()<CR>
func! Rungdb()
    exec "w"
    exec "!g++ % -g -o %<"
    exec "!gdb ./%<"
endfunc


"代码格式优化化

map <F6> :call FormartSrc()<CR><CR>

"定义FormartSrc()
func FormartSrc()
    exec "w"
    if &filetype == 'c'
        exec "!astyle --style=ansi -a --suffix=none %"
    elseif &filetype == 'cpp' || &filetype == 'hpp'
        exec "r !astyle --style=ansi --one-line=keep-statements -a --suffix=none %> /dev/null 2>&1"
    elseif &filetype == 'perl'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'py'||&filetype == 'python'
        exec "r !autopep8 -i --aggressive %"
    elseif &filetype == 'java'
        exec "!astyle --style=java --suffix=none %"
    elseif &filetype == 'jsp'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'xml'
        exec "!astyle --style=gnu --suffix=none %"
    else
        exec "normal gg=G"
        return
    endif
    exec "e! %"
endfunc
"结束定义FormartSrc


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Platform
function! MySys()
  if has("win32")
    return "windows"
  else
    return "linux"
  endif
endfunction


" Switch to buffer according to file name
function! SwitchToBuf(filename)
    "let fullfn = substitute(a:filename, "^\\~/", $HOME . "/", "")
    " find in current tab
    let bufwinnr = bufwinnr(a:filename)
    if bufwinnr != -1
        exec bufwinnr . "wincmd w"
        return
    else
        " find in each tab
        tabfirst
        let tab = 1
        while tab <= tabpagenr("$")
            let bufwinnr = bufwinnr(a:filename)
            if bufwinnr != -1
                exec "normal " . tab . "gt"
                exec bufwinnr . "wincmd w"
                return
            endif
            tabnext
            let tab = tab + 1
        endwhile
        " not exist, new tab
        exec "tabnew " . a:filename
    endif
endfunction

"Fast edit vimrc
if MySys() == 'linux'
    "Fast reloading of the .vimrc
    map <silent> <leader>ss :source ~/.vimrc<cr>
    "Fast editing of .vimrc
    map <silent> <leader>ee :call SwitchToBuf("~/.vimrc")<cr>
    "When .vimrc is edited, reload it
    "autocmd! bufwritepost .vimrc source ~/.vimrc
elseif MySys() == 'windows'
    " Set helplang
    set helplang=cn
    "Fast reloading of the _vimrc
    map <silent> <leader>ss :source ~/_vimrc<cr>
    "Fast editing of _vimrc
    map <silent> <leader>ee :call SwitchToBuf("~/_vimrc")<cr>
    "When _vimrc is edited, reload it
    autocmd! bufwritepost _vimrc source ~/_vimrc
endif

" For windows version
if MySys() == 'windows'
    source $VIMRUNTIME/mswin.vim
    behave mswin

    set diffexpr=MyDiff()
    function! MyDiff()
        let opt = '-a --binary '
        if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
        if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
        let arg1 = v:fname_in
        if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
        let arg2 = v:fname_new
        if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
        let arg3 = v:fname_out
        if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
        let eq = ''
        if $VIMRUNTIME =~ ' '
            if &sh =~ '\<cmd'
                let cmd = '""' . $VIMRUNTIME . '\diff"'
                let eq = '"'
            else
                let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
            endif
        else
            let cmd = $VIMRUNTIME . '\diff'
        endif
        silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
    endfunction
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Set font
if MySys() == "linux"
  if has("gui_gtk2")
    set gfn=Courier\ New\ 10,Courier\ 10,Luxi\ Mono\ 10,
          \DejaVu\ Sans\ Mono\ 10,Bitstream\ Vera\ Sans\ Mono\ 10,
          \SimSun\ 10,WenQuanYi\ Micro\ Hei\ Mono\ 10
  elseif has("x11")
    set gfn=*-*-medium-r-normal--10-*-*-*-*-m-*-*
  endif
endif

" Avoid clearing hilight definition in plugins
"if !exists("g:vimrc_loaded")
"    "Enable syntax hl
"    syntax enable
"
"    " color scheme
"    if has("gui_running")
"        set guioptions-=T
"        set guioptions-=m
"        set guioptions-=L
"        set guioptions-=r
"        colorscheme darkblue_my
"        "hi normal guibg=#294d4a
"        set cursorline
"    else
"        colorscheme desert_my
"    endif " has
"endif " exists(...)

"Some nice mapping to switch syntax (useful if one mixes different languages in one file)
map <leader>1 :set syntax=c<cr>
map <leader>2 :set syntax=xhtml<cr>
map <leader>3 :set syntax=python<cr>
map <leader>4 :set ft=javascript<cr>
map <leader>$ :syntax sync fromstart<cr>

autocmd BufEnter * :syntax sync fromstart


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fileformats
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Favorite filetypes
set ffs=unix,dos

nmap <leader>fd :se ff=dos<cr>
nmap <leader>fu :se ff=unix<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM userinterface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set 7 lines to the curors - when moving vertical..
"set so=7

" Maximum window when GUI running
if has("gui_running")
  "set lines=9999
  "set columns=9999
endif


""""""""""""""""""""""""""""""
" Visual
""""""""""""""""""""""""""""""
" From an idea by Michael Naumann
function! VisualSearch(direction) range
  let l:saved_reg = @"
  execute "normal! vgvy"
  let l:pattern = escape(@", '\\/.*$^~[]')
  let l:pattern = substitute(l:pattern, "\n$", "", "")
  if a:direction == 'b'
    execute "normal ?" . l:pattern . "^M"
  else
    execute "normal /" . l:pattern . "^M"
  endif
  let @/ = l:pattern
  let @" = l:saved_reg
endfunction

"Basically you press * or # to search for the current selection !! Really useful
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving around and tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Map space to / and c-space to ?
"map <space> /
"map <c-space> ?

"Smart way to move btw. windows
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

"Actually, the tab does not switch buffers, but my arrows
"Bclose function can be found in "Buffer related" section
map <leader>bd :Bclose<cr>
"map <down> <leader>bd

"Use the arrows to something usefull
"map <right> :bn<cr>
"map <left> :bp<cr>

"Tab configuration
map <leader>tn :tabnew
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
try
  set switchbuf=useopen
  set stal=1
catch
endtry

"Moving fast to front, back and 2 sides ;)
imap <m-$> <esc>$a
imap <m-0> <esc>0i

"Switch to current dir
map <silent> <leader>cd :cd %:p:h<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Command-line config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Bash like
cnoremap <C-A>    <Home>
cnoremap <C-E>    <End>
cnoremap <C-K>    <C-U>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffer realted
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Open a dummy buffer for paste
map <leader>es :tabnew<cr>:setl buftype=nofile<cr>
if MySys() == "linux"
map <leader>ec :tabnew ~/tmp/scratch.txt<cr>
else
map <leader>ec :tabnew $TEMP/scratch.txt<cr>
endif

"Restore cursor to file position in previous editing session
set viminfo='10,\"100,:20,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()

function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete ".l:currentBufNum)
   endif
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Session options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set sessionoptions-=curdir
set sessionoptions+=sesdir


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable folding, I find it very useful
"set fen
"set fdl=0
nmap <silent> <leader>zo zO
vmap <silent> <leader>zo zO


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab

map <leader>t2 :set shiftwidth=2<cr>
map <leader>t4 :set shiftwidth=4<cr>
au FileType html,python,vim,javascript,xml setl shiftwidth=2
"au FileType html,python,vim,javascript setl tabstop=2
"au FileType java,c,cpp setl shiftwidth=4
"au FileType java setl tabstop=4
au FileType txt setl lbr
au FileType txt setl tw=78

   """"""""""""""""""""""""""""""
   " Indent
   """"""""""""""""""""""""""""""
   "Wrap lines
   set wrap


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

" mapping
"inoremap <expr> <CR>       pumvisible()?"\<C-Y>":"\<CR>"
"inoremap <expr> <C-J>      pumvisible()?"\<PageDown>\<C-N>\<C-P>":"\<C-X><C-O>"
"inoremap <expr> <C-K>      pumvisible()?"\<PageUp>\<C-P>\<C-N>":"\<C-K>"
"inoremap <expr> <C-U>      pumvisible()?"\<C-E>":"\<C-U>"
"inoremap <C-]>             <C-X><C-]>
"inoremap <C-F>             <C-X><C-F>
"inoremap <C-D>             <C-X><C-D>
"inoremap <C-L>             <C-X><C-L>

" Enable syntax
if has("autocmd") && exists("+omnifunc")
  autocmd Filetype *
        \if &omnifunc == "" |
        \  setlocal omnifunc=syntaxcomplete#Complete |
        \endif
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Complete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" options

let OmniCpp_SelectFirstItem = 0
set completeopt=menu
set complete-=u
set complete-=i

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

   """"""""""""""""""""""""""""""
   " yank ring setting
   """"""""""""""""""""""""""""""
   let g:yankring_enabled=1
   let g:yankring_history_file='.yankring_history_file'
   map <leader>yr :YRShow<cr>

   """"""""""""""""""""""""""""""
   " file explorer setting
   """"""""""""""""""""""""""""""
   "Split vertically
   let g:explVertical=1

   "Window size
   let g:explWinSize=35

   let g:explSplitLeft=1
   let g:explSplitBelow=1

   "Hide some files
   let g:explHideFiles='^\.,.*\.class$,.*\.swp$,.*\.pyc$,.*\.swo$,\.DS_Store$'

   "Hide the help thing..
   let g:explDetailedHelp=0


   """"""""""""""""""""""""""""""
   " bufexplorer setting
   """"""""""""""""""""""""""""""
   let g:bufExplorerDefaultHelp=1       " Do not show default help.
   let g:bufExplorerShowRelativePath=1  " Show relative paths.
   let g:bufExplorerSortBy='mru'        " Sort by most recently used.
   let g:bufExplorerSplitRight=0        " Split left.
   let g:bufExplorerSplitVertical=1     " Split vertically.
   let g:bufExplorerSplitVertSize = 35  " Split width
   let g:bufExplorerUseCurrentWindow=1  " Open in new window.
   let g:bufExplorerMaxHeight=25        " Max height
   let g:bufExplorerShowDirectories=0   " Show directories.
   let g:bufExplorerSplitBelow = 0      " Split below
   autocmd BufWinEnter \[Buf\ List\] setl nonumber

   """"""""""""""""""""""""""""""
   " taglist setting
   """"""""""""""""""""""""""""""
   if MySys() == "windows"
     let Tlist_Ctags_Cmd = 'ctags'
   elseif MySys() == "linux"
     let Tlist_Ctags_Cmd = '/usr/bin/ctags'
   endif
   let Tlist_Show_One_File = 1
   let Tlist_Exit_OnlyWindow = 1
   let Tlist_Sort_Type = "name"    " 按照名称排序  
   let Tlist_Use_Right_Window = 1
   let Tlist_Compart_Format = 1    " 压缩方式  
   nmap <silent> <leader>tl :Tlist<cr>


   """"""""""""""""""""""""""""""
   " lookupfile setting
   """"""""""""""""""""""""""""""
   let g:LookupFile_MinPatLength = 2
   let g:LookupFile_PreserveLastPattern = 0
   let g:LookupFile_PreservePatternHistory = 0
   let g:LookupFile_AlwaysAcceptFirst = 1
   let g:LookupFile_AllowNewFiles = 0
   let g:LookupFile_UsingSpecializedTags = 1
   let g:LookupFile_Bufs_LikeBufCmd = 0
   let g:LookupFile_ignorecase = 1
   let g:LookupFile_smartcase = 1
   if filereadable("./filenametags")
       let g:LookupFile_TagExpr = '"./filenametags"'
   endif
   nmap <silent> <leader>lk :LUTags<cr>
   nmap <silent> <leader>ll :LUBufs<cr>
   nmap <silent> <leader>lw :LUWalk<cr>

   " lookup file with ignore case
   function! LookupFile_IgnoreCaseFunc(pattern)
       let _tags = &tags
       try
           let &tags = eval(g:LookupFile_TagExpr)
           let newpattern = '\c' . a:pattern
           let tags = taglist(newpattern)
       catch
           echohl ErrorMsg | echo "Exception: " . v:exception | echohl NONE
           return ""
       finally
           let &tags = _tags
       endtry

       " Show the matches for what is typed so far.
       let files = map(tags, 'v:val["filename"]')
       return files
   endfunction
   let g:LookupFile_LookupFunc = 'LookupFile_IgnoreCaseFunc'

   """"""""""""""""""""""""""""""
   " markbrowser setting
   """"""""""""""""""""""""""""""
   nmap <silent> <leader>mk :MarksBrowser<cr>

   """"""""""""""""""""""""""""""
   " showmarks setting
   """"""""""""""""""""""""""""""
   " Enable ShowMarks
   let showmarks_enable = 1
   " Show which marks
   let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
   " Ignore help, quickfix, non-modifiable buffers
   let showmarks_ignore_type = "hqm"
   " Hilight lower & upper marks
   let showmarks_hlline_lower = 1
   let showmarks_hlline_upper = 1

   """"""""""""""""""""""""""""""
   " mark setting
   """"""""""""""""""""""""""""""
   nmap <silent> <leader>hl <Plug>MarkSet
   vmap <silent> <leader>hl <Plug>MarkSet
   nmap <silent> <leader>hh <Plug>MarkClear
   vmap <silent> <leader>hh <Plug>MarkClear
   nmap <silent> <leader>hr <Plug>MarkRegex
   vmap <silent> <leader>hr <Plug>MarkRegex

   """"""""""""""""""""""""""""""
   " FeralToggleCommentify setting
   """"""""""""""""""""""""""""""
   let loaded_feraltogglecommentify = 1
   "map <silent> <leader>tc :call ToggleCommentify()<CR>j 
   "imap <M-c> <ESC>:call ToggleCommentify()<CR>j 

   """"""""""""""""""""""""""""""
   " vimgdb setting
   """"""""""""""""""""""""""""""
   let g:vimgdb_debug_file = ""
   run macros/gdb_mappings.vim

   """"""""""""""""""""""""""""""
   " eclim setting
   """"""""""""""""""""""""""""""
   let g:EclimTaglistEnabled=0

   """"""""""""""""""""""""""""""
   " FSwitch setting
   """"""""""""""""""""""""""""""
   au! BufEnter *.cc,*.cpp let b:fswitchdst = 'h' | let b:fswitchlocs = '.'
   au! BufEnter *.h let b:fswitchdst = 'cc,cpp' | let b:fswitchlocs = '.'
   let g:fsnonewfiles = "on"
   nmap <silent> <Leader>of :FSHere<cr>

   """"""""""""""""""""""""""""""
   " Tagbar setting
   """"""""""""""""""""""""""""""
   let g:tagbar_width = 40
   let g:tagbar_expand = 1
   nmap <silent> <Leader>bb :TagbarToggle<cr>

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " cscope setting
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    if has("cscope")
      "if MySys() == "linux"
        set csprg=/usr/bin/cscope
      "else
      "  set csprg=cscope
      "endif
      set csto=1
      set cst
      set nocsverb
      " add any database in current directory
    "  if filereadable("cscope.out")
    "      cs add cscope.out
    "  endif
      set csverb
    endif

  "  nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
  "  nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
  "  nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
  "  nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
  "  nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
  "  nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
  "  nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
  "  nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

    "窗口横向显示
    """"""""""""""""""""""""""""""
    " winmanager setting
    """"""""""""""""""""""""""""""
    let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
    let g:winManagerWidth = 35
    let g:defaultExplorer = 0
    nmap <C-W><C-F> :FirstExplorerWindow<cr>
    nmap <C-W><C-B> :BottomExplorerWindow<cr>
     nmap <silent> <leader>wm :WMToggle<cr>
    nmap wm :WMToggle<cr>
    "autocmd BufWinEnter \[Buf\ List\] setl nonumber


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype generic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   " Todo
   """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   "au BufNewFile,BufRead *.todo so ~/vim_local/syntax/amido.vim

   """"""""""""""""""""""""""""""
   " HTML related
   """"""""""""""""""""""""""""""
   " HTML entities - used by xml edit plugin
   let xml_use_xhtml = 1
   "let xml_no_auto_nesting = 1

   "To HTML
   let html_use_css = 1
   let html_number_lines = 0
   let use_xhtml = 1

   """""""""""""""""""""""""""""""
   " Vim section
   """""""""""""""""""""""""""""""
   autocmd FileType vim set nofen
   autocmd FileType vim map <buffer> <leader><space> :w!<cr>:source %<cr>

   """"""""""""""""""""""""""""""
   " HTML
   """""""""""""""""""""""""""""""
   au FileType html set ft=xml
   au FileType html set syntax=html


   """"""""""""""""""""""""""""""
   " C/C++
   """""""""""""""""""""""""""""""
   autocmd FileType c,cpp,xml  map <buffer> <leader><space> :make<cr>
   "autocmd FileType c,cpp  setl foldmethod=syntax | setl fen

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   "Quickfix
   nmap <leader>cn :cn<cr>
   nmap <leader>cp :cp<cr>
   nmap <leader>cw :cw 10<cr>
   "nmap <leader>cc :botright lw 10<cr>
   "map <c-u> <c-l><c-j>:q<cr>:botright cw 10<cr>

   function! s:GetVisualSelection()
       let save_a = @a
       silent normal! gv"ay
       let v = @a
       let @a = save_a
       let var = escape(v, '\\/.$*')
       return var
   endfunction

   " Fast grep
   nmap <silent> <leader>lv :lv /<c-r>=expand("<cword>")<cr>/ %<cr>:lw<cr>
   vmap <silent> <leader>lv :lv /<c-r>=<sid>GetVisualSelection()<cr>/ %<cr>:lw<cr>

   " Fast diff
   "cmap @vd vertical diffsplit 
   set diffopt+=vertical

   "Remove the Windows ^M
   noremap <Leader>dm mzHmx:%s/<C-V><cr>//ge<cr>'xzt'z:delm x z<cr>

   "Paste toggle - when pasting something in, don't indent.
   set pastetoggle=<F3>

   "Remove indenting on empty lines
   "map <F2> :%s/\s*$//g<cr>:noh<cr>''

   "Super paste
   "inoremap <C-v> <esc>:set paste<cr>mui<C-R>+<esc>mv'uV'v=:set nopaste<cr>

   "Fast Ex command
   "nnoremap ; :

   "For mark move
   "nnoremap <leader>' '

   "Fast copy
   "nnoremap ' "

   "A function that inserts links & anchors on a TOhtml export.
   " Notice:
   " Syntax used is:
   " Link
   " Anchor
   function! SmartTOHtml()
    TOhtml
    try
     %s/&quot;\s\+\*&gt; \(.\+\)</" <a href="#\1" style="color: cyan">\1<\/a></g
     %s/&quot;\(-\|\s\)\+\*&gt; \(.\+\)</" \&nbsp;\&nbsp; <a href="#\2" style="color: cyan;">\2<\/a></g
     %s/&quot;\s\+=&gt; \(.\+\)</" <a name="\1" style="color: #fff">\1<\/a></g
    catch
    endtry
    exe ":write!"
    exe ":bd"
   endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""Integrate with uncrustify
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Restore cursor position, window position, and last search after running a
" command.
function! Preserve(command)
  " Save the last search.
  let search = @/

  " Save the current cursor position.
  let cursor_position = getpos('.')

  " Save the current window position.
  normal! H
  let window_position = getpos('.')
  call setpos('.', cursor_position)

  " Execute the command.
  execute a:command

  " Restore the last search.
  let @/ = search

  " Restore the previous window position.
  call setpos('.', window_position)
  normal! zt

  " Restore the previous cursor position.
  call setpos('.', cursor_position)
endfunction

" Specify path to your Uncrustify configuration file.
let g:uncrustify_cfg_file_path =
    \ shellescape(fnamemodify('~/.uncrustify.cfg', ':p'))

" Don't forget to add Uncrustify executable to $PATH (on Unix) or 
" %PATH% (on Windows) for this command to work.
function! Uncrustify(language)
  call Preserve(':silent %!uncrustify'
      \ . ' -q '
      \ . ' -l ' . a:language
      \ . ' -c ' . g:uncrustify_cfg_file_path)
endfunction
    


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""已注悉的
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Mark as loaded
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    let g:vimrc_loaded = 1
    " NOTE: comments after Bundle command are not allowed..

    " For Thinkpad
    "imap <F1> <ESC>
    "nmap <F1> <ESC>
    "cmap <F1> <ESC>
    "vmap <F1> <ESC>

    """"""""""""""""""""""""""""""
    " super tab
    """"""""""""""""""""""""""""""
    " let g:SuperTabPluginLoaded=1 " Avoid load SuperTab Plugin
    " let g:SuperTabDefaultCompletionType='context'
    " let g:SuperTabContextDefaultCompletionType='<c-p>'
    "let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
    "let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
    "let g:SuperTabContextDiscoverDiscovery =
    "      \ ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]

    " Always use English messages & menu
    "language zh_CN.UTF-8
    "language messages en_US.ISO_8859-1
    "set langmenu=en_US.ISO_8859-1

    " Chinese
    " multi-encoding setting
    "if has("multi_byte")
    "  "set bomb 
    "  set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,sjis,euc-kr,ucs-2le,latin1 
    "  " CJK environment detection and corresponding setting 
    "  if v:lang =~ "^zh_CN" 
    "    " Use cp936 to support GBK, euc-cn == gb2312 
    "    set encoding=chinese 
    "    set termencoding=chinese 
    "    set fileencoding=chinese 
    "  elseif v:lang =~ "^zh_TW" 
    "    " cp950, big5 or euc-tw 
    "    " Are they equal to each other? 
    "    set encoding=taiwan 
    "    set termencoding=taiwan 
    "    set fileencoding=taiwan 
      "elseif v:lang =~ "^ko" 
      "  " Copied from someone's dotfile, untested 
      "  set encoding=euc-kr 
      "  set termencoding=euc-kr 
      "  set fileencoding=euc-kr 
      "elseif v:lang =~ "^ja_JP" 
      "  " Copied from someone's dotfile, untested 
      "  set encoding=euc-jp 
      "  set termencoding=euc-jp 
      "  set fileencoding=euc-jp 
      " endif 
      " " Detect UTF-8 locale, and replace CJK setting if needed 
      " if v:lang =~ "utf8$" || v:lang =~ "UTF-8$" 
      "   set encoding=utf-8 
      "   set termencoding=utf-8 
      "   set fileencoding=utf-8 
      " endif 
    "endif 
    "if MySys() == "windows"
       "set encoding=utf-8
       "set langmenu=zh_CN.UTF-8
       "language message zh_CN.UTF-8
       "set fileencodings=ucs-bom,utf-8,gb18030,cp936,big5,euc-jp,euc-kr,latin1
    "endif

    " CTRL-C
    "vnoremap <C-C> "+y

    " Use CTRL-Q to do what CTRL-V used to do
    "noremap <C-Q>        <C-V>

    " CTRL-V
    "map <C-V>        "+gP
    "cmap <C-V>        <C-R>+
    "exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
    "exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']

    "Highlight current
    "if has("gui_running")
    "  set cursorline
    "  hi cursorline guibg=#333333
    "  hi CursorColumn guibg=#333333
    "endif

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Parenthesis/bracket expanding
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "vnoremap @1 <esc>`>a)<esc>`<i(<esc>
    "")
    "vnoremap @2 <esc>`>a]<esc>`<i[<esc>
    "vnoremap @3 <esc>`>a}<esc>`<i{<esc>
    "vnoremap @$ <esc>`>a"<esc>`<i"<esc>
    "vnoremap @q <esc>`>a'<esc>`<i'<esc>
    "vnoremap @w <esc>`>a"<esc>`<i"<esc>

    "Map auto complete of (, ", ', [
    "inoremap @1 ()<esc>:let leavechar=")"<cr>i
    "inoremap @2 []<esc>:let leavechar="]"<cr>i
    "inoremap @3 {}<esc>:let leavechar="}"<cr>i
    "inoremap @4 {<esc>o}<esc>:let leavechar="}"<cr>O
    "inoremap @q ''<esc>:let leavechar="'"<cr>i
    "inoremap @w ""<esc>:let leavechar='"'<cr>i
    "au BufNewFile,BufRead *.\(vim\)\@! inoremap " ""<esc>:let leavechar='"'<cr>i
    "au BufNewFile,BufRead *.\(txt\)\@! inoremap ' ''<esc>:let leavechar="'"<cr>i

    "imap <m-l> <esc>:exec "normal f" . leavechar<cr>a
    "imap <d-l> <esc>:exec "normal f" . leavechar<cr>a

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " General Abbrevs
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "My information
    "iab xdates <c-r>=strftime("%b %d, %Y")<cr>
    "iab xdate <c-r>=strftime("%a %b %d %H:%M:%S %Z %Y")<cr>
    "iab xname Easwy Yang

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Editing mappings etc.
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    func! DeleteTrailingWS()
      exe "normal mz"
      %s/\s\+$//ge
      nohl
      exe "normal `z"
    endfunc

    " do not automaticlly remove trailing whitespace
    "autocmd BufWrite *.[ch] :call DeleteTrailingWS()
    "autocmd BufWrite *.cc :call DeleteTrailingWS()
    "autocmd BufWrite *.txt :call DeleteTrailingWS()
    nmap <silent> <leader>ws :call DeleteTrailingWS()<cr>:w<cr>
    "nmap <silent> <leader>ws! :call DeleteTrailingWS()<cr>:w!<cr>

