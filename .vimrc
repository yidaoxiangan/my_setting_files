inoremap jk <Esc>
set guifont=FiraCode\ 12

"Always show the status line.
set laststatus=2

" Set the content of status line.
" %F: Path of current.
" %r: 如果readonly,会显示[RO]

" %B: 显示光标下字符的编码值,十六进制.
" %l:光标所在的行号. %v:光标所在的虚拟列号.
" %P: 显示当前内容在整个文件中的百分比.
" %H和%M是strftime()函数的参数,获取时间.
set statusline=%F%r\ HEX=%B\ row\:%l\ col\:%v\ %P\ %{strftime(\"%H:%M\")}

" Setting the line number of vim
:set number

" When a file is changed outside vim, audo read it
:set autoread

"自动保存"
set autowrite

"共享剪切板"
set clipboard+=unnamed

" 高亮显示匹配的括号
:set showmatch

" 高亮显示所有搜索到的内容.后面用map映射
" 快捷键来方便关闭当前搜索的高亮.
set hlsearch

" 光标立刻跳转到搜索到内容
set incsearch

" 搜索到最后匹配的位置后,再次搜索不回到第一个匹配处
set nowrapscan

" 去掉输入错误时的提示声音
set noeb

" 下面设置cursorline,高亮光标所在的行.
" cursorlineopt=number只高亮行号部分,不影响正文内容
" 的显示. 在其他容易看到光标的终端上可以去掉这两个设置.
set cursorline
set cursorcolumn
highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
"set cursorlineopt=number

" 开启语法高亮
syntax enable

" 自动缩进时,缩进长度为4
set shiftwidth=4

" 输入Tab字符时,自动替换成空格
set expandtab

" set tap space length to 4
set tabstop=4

" 表示在编辑模式下按退格键时候退回缩进的长度，设置为4
set softtabstop=4   

" 表示自动缩进
set autoindent

"开启新行时使用智能自动缩进"
set smartindent
set cin
set showmatch

"共享剪切板
set clipboard+=unnamed

"匹配括号高亮的时间（单位是十分之一秒）"
set mat=2

"光标移动到buffer的顶部和底部时保持3行距离"
set scrolloff=2

"搜索时不区分大小写"
"还可以使用简写（“:set ic”和“:set noic”）"
set ignorecase

"显示标尺
set ruler

"输入的命令显示出来，看的清楚
set showcmd

"启动时隐去援助提示
set shortmess=atI

"智能tab
set smarttab

"c文件自动缩进
set cindent

"允许折叠
set foldenable

"根据语法折叠
set fdm=syntax

"手动折叠
"set fdm=manual
