"highlight
syntax on

"search
set hlsearch
set incsearch

"set backspace
set backspace=indent,eol,start

"tab 
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"auto indent
set autoindent
set cindent

"mouse
set mouse=a

"display line number
set number

"file encoding
set fileencodings=utf-8,gbk

"ctags
let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
let Tlist_Show_One_File=1
set tags=tags;
set updatetime=300

"key binding
nmap <F1>   :NERDTreeToggle<CR>
nmap <F2>   :TlistToggle<CR>
nmap <F3>   :make<CR>

"colorscheme
colorscheme desert

"Powerline
set laststatus=2
set t_Co=256

"highlight current line
set cursorline
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight cursorline cterm=reverse,bold ctermbg=darkgray

