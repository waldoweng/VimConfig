set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Plugin 'vim-syntastic/syntastic'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'w0rp/ale'
call vundle#end()

filetype plugin indent on

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
let Tlist_Ctags_Cmd="/usr/bin/ctags"
let Tlist_Show_One_File=1
set tags=tags;
set updatetime=300

"key binding
nmap <F1>   :NERDTreeToggle<CR>
nmap <F2>   :TlistToggle<CR>
nmap <F3>   :make<CR>
let mapleader='\'

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

"YouCompleteMe
let g:ycm_python_binary_path = 'python'
nnoremap <c-]> :YcmCompleter GoToDefinitionElseDeclaration<CR>

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers=['pylint']
"let g:syntastic_python_flake8_args='--ignore=E501,F403,F405,W503'

"ale
let g:ale_sign_column_always=1
let g:ale_set_highlights=0
let g:ale_sign_error='✗'
let g:ale_sign_warning='⚡'
let g:ale_linters = {'python': ['pylint']}

"rainbow_parentheses.vim
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
autocmd VimEnter * RainbowParenthesesToggle
autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces

"yapf
autocmd FileType python nnoremap <LocalLeader>= :0,$!yapf<CR>
