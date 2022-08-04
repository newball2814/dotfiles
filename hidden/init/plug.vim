
call plug#begin()

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" LaTeX autocompletion
Plug 'lervag/vimtex'

" Other plugs
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot'
Plug 'alvan/vim-closetag'
Plug 'voldikss/vim-floaterm'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'vim-syntastic/syntastic'
Plug 'lilydjwg/colorizer'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Colorscheme
Plug 'b4skyx/serenade'
Plug 'ghifarit53/tokyonight-vim'
Plug 'chriskempson/base16-vim'

call plug#end()
