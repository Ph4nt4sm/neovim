

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


" file stuff
Plug 'kien/ctrlp.vim'


"Plug 'bbchung/Clamp'


" Initialize plugin system
call plug#end()



	autocmd BufWinLeave *.* mkview
	autocmd BufWinEnter *.* silent loadview 

 	set filetype=on
	filetype plugin on
	syntax enable
	set foldmethod=indent   
	set foldnestmax=10
	set nofoldenable
	set foldlevel=2
	set smartindent
	set expandtab         "tab to spaces
	set tabstop=2         "the width of a tab
	set shiftwidth=2      "the width for indent
	set foldenable
	set foldlevel=99
	set ignorecase        "ignore the case when search texts
	set smartcase         "if searching text contains uppercase case will not be ignored
" 	Lookings
	set relativenumber           "line number
	set cursorline       "hilight the line of the cursor
	set cursorcolumn     "hilight the column of the cursor
	set nowrap           "no line wrapping
	set hidden

	colorscheme kalisi
	set background=dark

	set tabstop=4
	set softtabstop=4
	set shiftwidth=4
	set noexpandtab

	set clipboard+=unnamedplus


	"let g:clamp_autostart = 0

	let g:cpp_class_scope_highlight = 1
	let g:cpp_member_variable_highlight = 1
	let g:cpp_experimental_simple_template_highlight = 1
	let g:cpp_concepts_highlight = 1




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



	


"ctrl +n
map <C-n> :NERDTreeToggle<CR>
map <C-c> "+y<CR>
map <C-v> "+p<CR>



let mapleader="\<SPACE>"
" Open file menu
nnoremap <Leader>o :CtrlP<CR>
" Open buffer menu
nnoremap <Leader>b :CtrlPBuffer<CR>
" Open most recently used files
nnoremap <Leader>f :CtrlPMRUFiles<CR>


"easy motion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)




map <F8> :!make clean && make VulkanTest && ./VulkanTest<CR>



