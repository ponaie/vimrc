"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Plugin 'gmarik/vundle'

" "......................................
" "my Plugin here:
" " original repos on github
" "......................................
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dkprice/vim-easygrep'
Plugin 'easymotion/vim-easymotion'
Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'kshenoy/vim-signature'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'rdnetto/YCM-Generator'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Valloric/ListToggle'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'yggdroot/indentline'

" C Plus Plus
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'derekwyatt/vim-fswitch'

" Python Plugins
Plugin 'python-mode/python-mode'

" Go
"Plugin 'fatih/vim-go'

" HTML
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'glench/vim-jinja2-syntax'


" ".....................................
" " vim-scripts repos
" ".....................................
Plugin 'bufexplorer.zip'
Plugin 'YankRing.vim'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Leader Key
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=";"            " 定义快捷键的前缀


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" vim-airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='powerlineish'  " 设置主题
let g:airline_powerline_fonts = 1  " 使用Powerline字体
" Automatically displays all buffers when there's only one tab open
let g:airline#extensions#tabline#enabled = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" vim-fswitch
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"*.cpp 和 *.h 间切换
nmap <silent> <Leader>sw :FSHere<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Emmet-vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_mode='n'       "only enable normal mode functions
"let g:user_emmet_mode='a'     "enable all functions in all mode

"Enable just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"To remap the default <C-Y> leader
"let g:user_emmet_leader_key = '<C-T>'
"Note that the trailing , still needs to be entered, so the new keymap would
"be <C-Z>,


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" indentline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_char = '┊'
let g:indentLine_color_term = 239
let g:indentLine_bufNameExclude = ['_.*', 'NERD_tree.*']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"列出当前目录文件
map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC> :NERDTreeToggle<CR>
" ignore files in NERDTree
let g:NERDTreeIgnore = ['\.o$', '\.pyc$', '^\.git$']
"当打开vim且没有文件时自动打开NERDTree
" autocmd vimenter * if !argc() | NERDTree | endif
" 只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:NERDTreeBookmarksFile = '$HOME/.vim/bundle/nerdtree/'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" NERD Commenter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
"Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
"Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
"Add your own custom formats or override the defaults
"let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/'  }  }
"Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
"Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" vim-signature
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" mx           Toggle mark 'x' and display it in the leftmost column
" dmx          Remove mark 'x' where x is a-zA-Z

" m,           Place the next available mark
" m.           If no mark on line, place the next available mark. Otherwise, remove (first) existing mark.
" m-           Delete all marks from the current line
" m<Space>     Delete all marks from the current buffer
" ]`           Jump to next mark
" [`           Jump to prev mark
" ]'           Jump to start of next line containing a mark
" ['           Jump to start of prev line containing a mark
" `]           Jump by alphabetical order to next mark
" `[           Jump by alphabetical order to prev mark
" ']           Jump by alphabetical order to start of next line having a mark
" '[           Jump by alphabetical order to start of prev line having a mark
" m/           Open location list and display marks from current buffer
"
" m[0-9]       Toggle the corresponding marker !@#$%^&*()
" m<S-[0-9]>   Remove all markers of the same type
" ]-           Jump to next line having a marker of the same type
" [-           Jump to prev line having a marker of the same type
" ]=           Jump to next line having a marker of any type
" [=           Jump to prev line having a marker of any type
" m?           Open location list and display markers from current buffer
" m<BS>        Remove all markers


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Easygrep
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <Leader>vv  - Grep for the word under the cursor, match all occurences,
"               like |gstar|
" <Leader>vV  - Grep for the word under the cursor, match whole word, like
"               |star|
" <Leader>va  - Like vv, but add to existing list
" <Leader>vA  - Like vV, but add to existing list
" <Leader>vr  - Perform a global search on the word under the cursor
"               and prompt for a pattern with which to replace it.
" <Leader>vo  - Select the files to search in and set grep options
" <Leader>vy* - Invoke any option from the options explorer, where * is the
"               shortcut for that option.


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" CtrlP
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Once CtrlP is open:
" Press <F5> to purge the cache for the current directory to get new files, remove deleted files and apply new ignore options.
" Press <c-f> and <c-b> to cycle between modes.
" Press <c-d> to switch to filename only search instead of full path.
" Press <c-r> to switch to regexp mode.
" Use <c-j>, <c-k> or the arrow keys to navigate the result list.
" Use <c-t> or <c-v>, <c-x> to open the selected entry in a new tab or in a new split.
" Use <c-n>, <c-p> to select the next/previous string in the prompt's history.
" Use <c-y> to create a new file and its parent directories.
" Use <c-z> to mark/unmark multiple files and <c-o> to open them.

let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" YankRing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <Leader>yr :YRShow<CR>
let g:yankring_replace_n_pkey = '<M-p>'
let g:yankring_replace_n_nkey = '<M-n>'
let g:yankring_history_dir = '$HOME/.vim/YankRing'
let g:yankring_dot_repeat_yank = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" BufExplorer
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"To start exploring in the current window, use: >
"   <Leader>be   or   :BufExplorer   or   Your custom key mapping
"To start exploring in a newly split horizontal window, use: >
"   <Leader>bs   or   :BufExplorerHorizontalSplit   or   Your custom key mapping
"To start exploring in a newly split vertical window, use: >
"   <Leader>bv   or   :BufExplorerVerticalSplit   or   Your custom key mapping

let g:bufExplorerDefaultHelp=0       " Do not show default help.
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.
let g:bufExplorerSplitRight=0        " Split left.
let g:bufExplorerSplitVertical=1     " Split vertically.
let g:bufExplorerSplitVertSize = 30  " Split width
let g:bufExplorerUseCurrentWindow=1  " Open in new window.
autocmd BufWinEnter \[Buf\ List\] setl nonumber "


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" ListToggle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lt_location_list_toggle_map = '<Leader>ll'
let g:lt_quickfix_list_toggle_map = '<Leader>q'
let g:lt_height = 8


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" python-mode
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pymode_python = 'python3'
let g:pymode_virtualenv = 1       " Enable automatic virtualenv detection
let g:pymode_lint_unmodified = 1  " Check code on every save
let g:pymode_lint_on_fly = 1      " Check code when editing
let g:pymode_trim_whitespaces = 1 " Trim unused white spaces on save
let g:pymode_rope = 0             " Disable rope
let g:pymode_rope_completion = 0  " 禁用python-mode自动补全功能，防止与YouCompleteMe冲突
let g:pymode_doc = 0              " Turn off the documentation script
let g:pymode_run = 0              " Turn off the run code script

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" syntastic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {"passive_filetypes": ["python"]}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Ultisnips
"''"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsSnippetDirectories=['UltiSnips']
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" YouCompleteMe
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_python_binary_path = 'python3'
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_echo_current_diagnostic = 1
nmap K :YcmCompleter GetDoc<CR>
nmap <F4> :YcmDiags<CR>
nmap <F6> :YcmGenerateConfig<CR>
nmap <F7> :YcmCompleter FixIt<CR>
nmap <F8>  :YcmCompleter GoToDefinitionElseDeclaration<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 实用设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
filetype on                  " 侦测文件类型
filetype plugin on           " 载入文件类型插件
filetype indent on           " 为特定文件类型载入相关缩进文件
set autoread                 " 设置当文件被改动时自动载入
set autowrite                " 自动保存
"set ruler                   " 打开状态栏标尺
set cursorline               " 突出显示当前行
set magic                    " 设置魔术
set noeb                     " 去掉输入错误的提示声音
set confirm                  " 在处理未保存或只读文件的时候，弹出确认
set nobackup                 " 禁止生成临时文件
set noswapfile
set smartcase                " 智能搜索大小写
set linespace=0
set completeopt=longest,menu " 代码补全
set wildmenu                 " 增强模式中的命令行自动完成操作
set backspace=2              " 使回格键（backspace）正常处理indent, eol, start等
set mouse=a                  " 可以在buffer的任何地方使用鼠标
set selection=exclusive
set selectmode=mouse,key
set report=0                 " 通过使用:commands命令，告诉我们文件的哪一行被改变过
set hidden                   " 避免必须保存修改才可以跳转buffer


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 显示相关
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8
" :H 打开一个垂直帮助窗口
command -nargs=* -complete=help H vertical belowright help <args>

set number                   " 显示行号
set history=1000             " 历史记录数
set hlsearch                 " 搜索逐字符高亮
set incsearch
set cmdheight=2              " 总是显示状态行
set viminfo+=!               " 保存全局变量
set iskeyword+=_,$,@,%,#,-   " 带有如下符号的单词不要被换行分割
set shortmess=atI            " 启动的时候不显示那个援助乌干达儿童的提示
set laststatus=2             " 启动显示状态行(1),总是显示状态行(2)
set scrolloff=2              " 光标移动到buffer的顶部和底部时保持3行距离
set foldmethod=manual
set foldlevel=3
"set foldcolumn=0
set fillchars=vert:\ ,stl:\ ,stlnc:\    " 在被分割的窗口间显示空白，便于阅读
set showmatch                " 高亮显示匹配的括号
set matchtime=1              " 匹配括号高亮的时间（单位是十分之一秒）

" 标示行尾空白字符
highlight TrailSpace guibg=red ctermbg=red
match TrailSpace / \+$/
autocmd ColorScheme * highlight TrailSpace guibg=red ctermbg=darkred

" highlight UnwanttedTab ctermbg=red guibg=darkred
" match UnwanttedTab /\t/
" autocmd ColorScheme * highlight UnwanttedTab ctermbg=red guibg=darkred


"""""""""""""""""""""""""""""""""""""""""""""""""""
" indentation
"""""""""""""""""""""""""""""""""""""""""""""""""""
" set autoindent               " 自动缩进
set cindent                  " C风格缩进
set tabstop=4                " Tab键的宽度
set softtabstop=4            " 统一缩进为4
set shiftwidth=4
set expandtab                " 使用空格代替制表符
au FileType cpp setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
au FileType python setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4
au FileType html,css setlocal noexpandtab shiftwidth=2 softtabstop=2 tabstop=2


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 键盘命令
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap <Leader>y "+y       " 设置快捷键将选中文本块复制至系统剪贴板
nmap <Leader>p "+p           " 设置快捷键将系统剪贴板内容粘贴至 vim

" map <C-w> <C-w>w
nnoremap nw <C-W><C-W>       " 依次遍历子窗口
nnoremap <Leader>jw <C-W>j   " 跳转至下方的子窗口
nnoremap <Leader>kw <C-W>k   " 跳转至上方的子窗口
nnoremap <Leader>hw <C-W>h   " 跳转至左方的窗口
nnoremap <Leader>lw <C-W>l   " 跳转至右方的窗口

" tab快速导航
" Keyboard shortcut is gt, gT.
map <Leader>tp :tabp<CR>
map <Leader>tn :tabn<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" buffer快速导航
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>bn :bn<CR>
nnoremap <Leader>bp :bp<CR>

" 查看buffers
" nnoremap <Leader>l :ls<CR>

" 通过索引快速跳转
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 新文件标题
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.rb,*.java,*.py,*.php exec ":call SetTitle()"
""定义函数SetTitle，自动插入文件头
func! SetTitle()
    if &filetype == 'sh'
        call setline(1,"\#!/bin/bash")
        call append(line("."), "")
    elseif &filetype == 'python'
        call setline(1, "# ------------------------------------------------------------------------")
        call append(line("."), "# File Name: ".expand("%"))
        call append(line(".")+1, "# Author: Stranger")
        call append(line(".")+2, "# Mail: xxueqiang16@gmail.com")
        call append(line(".")+3, "# Created Time: ".strftime("%c"))
        call append(line(".")+4, "# ------------------------------------------------------------------------")
        call append(line(".")+5, "")
        call append(line(".")+6, "")
    elseif &filetype == 'ruby'
        call setline(1,"#!/usr/bin/env ruby")
        call append(line("."),"# encoding: utf-8")
        call append(line(".")+1, "")
    elseif &filetype == 'php'
        call setline(1,"<?php")
        call append(line("."), "")
        call append(line(".")+1, "?>")
    else
        call setline(1, "/*************************************************************************")
        call append(line("."), "    > File Name: ".expand("%"))
        call append(line(".")+1, "    > Author: Stranger")
        call append(line(".")+2, "    > Mail: xxueqiang16@gmail.com")
        call append(line(".")+3, "    > Created Time: ".strftime("%c"))
        call append(line(".")+4, " ************************************************************************/")
        call append(line(".")+5, "")
        call append(line(".")+6, "")
    endif
    if expand("%:e") == 'cpp'
        call append(line(".")+6, "#include <iostream>")
        call append(line(".")+7, "using namespace std;")
        call append(line(".")+8, "")
        call append(line(".")+9, "int main() {}")
    endif
    if &filetype == 'c'
        call append(line(".")+6, "#include<stdio.h>")
        call append(line(".")+7, "")
    endif
    if expand("%:e") == 'h'
        call append(line(".")+6, "#ifndef _".toupper(expand("%:r"))."_H")
        call append(line(".")+7, "#define _".toupper(expand("%:r"))."_H")
        call append(line(".")+8, "#endif")
    endif
    if &filetype == 'java'
        call append(line(".")+6,"public class ".expand("%:r"))
        call append(line(".")+7,"")
    endif

    "新建文件后，自动定位到文件末尾
    if &filetype == 'php'
        normal 2G
    else
        normal G
    endif
endfunc


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" F5编译运行
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!clang % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!clang++ -std=c++14 % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java %<"
    elseif &filetype == 'sh'
        exec "!time bash %<"
    elseif &filetype == 'python'
        exec "!time python3 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
        exec "!go build %"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
    endif
endfunc


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" F12代码格式优化化
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F12> :call FormartSrc()<CR><CR>

"""定义FormartSrc()
func! FormartSrc()
    exec "w"
    if &filetype == 'c'
        exec "!astyle --style=ansi -a --suffix=none %"
    elseif &filetype == 'cpp' || &filetype == 'hpp'
        exec "r !clang-format --style=Google -i %> /dev/null 2>&1"
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

set showcmd                 " 输入的命令显示出来，看的清楚些
