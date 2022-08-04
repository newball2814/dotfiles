
" Enable true color if supported by terminal
if has('termguicolors')
	set termguicolors
endif

" Highlight current line 
set cursorline
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
highlight clear CursorLine

" Color fix in Alacritty
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set t_Co=256

" Other settings
syntax on
filetype plugin on
filetype indent on 
filetype plugin indent on 

set autoindent
set encoding=UTF-8
set hidden 
set background=dark
set mouse+=a
set number
set relativenumber
set expandtab
set nohlsearch
set nobackup
set nowritebackup
set noswapfile
set nocompatible
set noshowmode
set completeopt=menuone,noinsert,noselect
set fileformat=unix
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set laststatus=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set cmdheight=3
set scrolloff=8
set updatetime=300
set shortmess+=c 

" Suntastic settings 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
