inoremap jk <Esc>
set guifont=FiraCode\ 12

"Always show the status line.
set laststatus=2

set number

" When a file is changed outside vim, audo read it
set autoread

"自动保存"
set autowrite

"共享剪切板"
set clipboard+=unnamed

" 高亮显示匹配的括号
set showmatch

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
"set cursorcolumn
"highlight CursorLine   cterm=NONE ctermbg=gray ctermfg=green guibg=NONE guifg=NONE
"highlight CursorColumn cterm=NONE ctermbg=gray ctermfg=green guibg=NONE guifg=NONE
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

colorscheme molokai

"set t_Co=256
if has("termguicolors")
    set termguicolors
endif
"Plugin
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
call plug#end()

"Plugin Setting
map <C-n> :NERDTreeToggle<CR>
let g:airline_powerline_fonts = 1  " 支持 powerline 字体
let g:airline#extensions#tabline#enabled = 1 " 显示窗口tab和buffer
let g:airline_theme='molokai'  " murmur配色不错
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = ' '
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = ' '
let g:airline_symbols.linenr = ' '
let g:airline_symbols.branch = ' '
