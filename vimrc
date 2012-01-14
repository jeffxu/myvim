"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

syntax enable
set nocompatible
set hlsearch
colorscheme molokai
set nu
set tabstop=4
set shiftwidth=4
set sts=4
set ai
set si
set expandtab
filetype on
filetype plugin on
set nocp
set guifont=Monaco:h14
set ignorecase
set smartcase
"打开文件即切换到文件所在目录
""set autochdir
"Turn off backup
set nobackup
set nowb
set noswapfile
"C-style indeting
"set cindent
filetype plugin indent on
"关闭折叠
set nofoldenable

set showcmd "show incomplete cmds down the bottom
set showmode "show current mode down the bottom
 
set incsearch "find the next match as we type the search
set hlsearch "hilight searches by default

set wildmenu
set completeopt=menuone,longest

set sessionoptions-=options

"set nowrap
" wrapping text
set wrap linebreak

"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

"always show status bar
set ls=2

"neocomplcache
let g:neocomplcache_enable_at_startup = 1
" Use smartcase. 
let g:NeoComplCache_SmartCase = 1

if !has('Win32')
    set list
    set listchars=tab:·\ ,eol:¬
endif

" vim插件管理工具
call pathogen#infect()

" 将F2键映射为取消字符串搜索后的高亮
map <F2> :nohlsearch<CR>

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

autocmd FILEType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#CompleteCpp
autocmd FileType html,htmldjango,css,xml,yaml setlocal ts=2 sts=2 sw=2 expandtab

au! BufRead,BufNewFile *.json set filetype=json
au! BufRead,BufNewFile *.as set filetype=actionscript
au! BufRead,BufNewFile *.applescript set filetype=applescript

"shortcut for TlistOpen
map <C-l> :TlistOpen<cr>

"session plugin
let g:session_autoload = 1
let g:session_autosave = 1

set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gbk,gb2312,gb18030,cp936,default,latin1

""""""""""""""""""""""""""""""
" => Command-t
""""""""""""""""""""""""""""""
let g:CommandTMaxHeight = 10

function! CmdT()
    if exists('t:NERDTreeBufName')
        let ntroot = getbufvar(t:NERDTreeBufName, 'NERDTreeRoot')
        execute 'CommandT ' . ntroot.path.str()
    else
        CommandT 
    endif
endfunction
" open CommandT by NERDTree root path
nmap ,t :call CmdT()<CR>

" pydoc specify the path to pydoc to figure out which version of python to
" use.
let g:pydoc_cmd = "/usr/bin/pydoc2.6"
