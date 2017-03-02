


  set smartindent
  set expandtab         "tab to spaces
  set tabstop=2         "the width of a tab
  set shiftwidth=2      "the width for indent
  set foldenable
  set foldmethod=indent "folding by indent
  set foldlevel=99
  set ignorecase        "ignore the case when search texts
  set smartcase         "if searching text contains uppercase case will not be ignored
" Lookings
  set number           "line number
  set cursorline       "hilight the line of the cursor
  set cursorcolumn     "hilight the column of the cursor
  set nowrap           "no line wrapping




" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

"status bar
Plug 'vim-airline/vim-airline'

Plug 'ervandew/supertab'

Plug 'benekastah/neomake'

Plug 'easymotion/vim-easymotion'

Plug 'valloric/youcompleteme', { 'do': './install.py --clang-completer'  }

Plug 'octol/vim-cpp-enhanced-highlight'	

"GIT
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Colour Scheme
Plug 'freeo/vim-kalisi'

"tags
Plug 'ludovicchabant/vim-gutentags'

Plug 'thirtythreeforty/lessspace.vim'



" Initialize plugin system
call plug#end()


set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab



""""""" General coding stuff """""""
" Highlight 110th column
set colorcolumn=110
" Always show status bar
set laststatus=2
" Let plugins show effects after 500ms, not 4s
set updatetime=500
" Disable mouse click to go to position
set mouse-=a
" Don't let autocomplete affect usual typing habits
set completeopt=menuone,preview,noinsert
" Let vim-gitgutter do its thing on large files
let g:gitgutter_max_signs=10000

set clipboard+=unnamedplus


filetype indent on
	
syntax enable

"ctrl +n
map <C-n> :NERDTreeToggle<CR>
map <C-c> "+y<CR>
map <C-v> "+p<CR>

colorscheme kalisi
set background=dark


map <F8> :!g++ % && ./a.out<CR>



