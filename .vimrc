set nocompatible " 关闭vi兼容
syntax on " 打开语法高亮
set showmode " 底部显示当前命令模式还是插入模式
set showcmd " 命令模式下，底部显示当前键入的指令
set mouse=a " 支持鼠标
set encoding=utf-8
set t_Co=256 " 启用256色
colorscheme onedark
set autoindent " 回车后下一行的缩进自动与上一行一致
set tabstop=2 " 按下tab时，vim显示空格数
set smartindent
set expandtab " 由于tab在不同编辑器中缩进不一致，该设置自动将tab转为空格
set shiftwidth=4 " 在文本上按下>>(增加一级缩进)、<<（取消一级缩进）或者==（取消所有缩进）时，每一级的字符数
set paste
set nu
"set relativenumber " 显示光标所在的当前行的行号， 其他行都为相对于改行的相对行号
set cursorline " 光标所在行高亮
set textwidth=100 " 设置行宽，一行显示多少个字符
set wrap " 自动折行
set linebreak " 只有遇到指定的符号才折行
set wrapmargin=2 " 指定折行处与编辑器窗口的右边缘之间空出的字符数
set scrolloff=5 " 垂直滚动时，光标距离顶部/底部的位置（行）
set sidescrolloff=15 " 水平滚动时，光标距离行首或行位的位置（字符），该配置在不折行时有用
set laststatus=2 " 是否显示状态栏，0：不显示， 1：只在多窗口时显示，2：显示
set ruler " 在状态栏显示光标的当前位置

set showmatch " 光标遇到括号时自动高亮另一边
set hlsearch " 搜索时，高亮显示匹配结果
set incsearch " 搜索时，每输入一个字符，就自动跳到第一个匹配的结果
set ignorecase " 搜索时忽略大小写
" set smartcase "

"set spell spellang=en_us " 打开英语单词的拼写检查
"set nobackup " 不创建备份文件
"set noswapfile " 不创建交换文件，用于系统崩溃时恢复文件
set undofile " 保留撤销历史
"set backupdir=~/.vim/.backup//
"set directory=~/.vim/.swp//
set undodir=~/.vim/.undo//

set autochdir " 自动切换工作目录
set visualbell " 出错时，发出视觉提示，屏幕闪烁
set history=1000
set autoread " 打开文件监视，如果编辑过程中文件发生外部改变，就会发出提示

set wildmenu
set wildmode=longest:list,full

if (empty($TMUX))
	if (has("nvim"))
		let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	endif
	if (has("termguicolors"))
		set termguicolors
	endif
endif

filetype indent on " 开启文件类型检查

