set nocompatible              " be iMproved, required
filetype off                  " required
syntax off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Open Files with fuzzy search
Plugin 'kien/ctrlp.vim'
" Configurable context sensitive Statusline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" PluginCollection for python developement
Plugin 'klen/python-mode'
" Outine variable and functions
Plugin 'taglist.vim'
" Insane git integration
Plugin 'tpope/vim-fugitive'
" Browse files on your system
Plugin 'scrooloose/nerdtree'
" Work with 'surroundings'
Plugin 'tpope/vim-surround'
" Repeat functions provided by plugins
Plugin 'tpope/vim-repeat'
" Snippets
Plugin 'SirVer/ultisnips'
" HTML5 Syntax
Plugin 'othree/html5.vim'
" CSS3 Syntax
Plugin 'hail2u/vim-css3-syntax'
" Stylus Syntax Highlighting
Plugin 'wavded/vim-stylus'
" Syntax Checking
Plugin 'scrooloose/syntastic'
" Snippets for Ultisnips
Plugin 'honza/vim-snippets'
" Javascript Syntax
Plugin 'othree/yajs.vim'
" Javascript Libraries Syntax
Plugin 'othree/javascript-libraries-syntax.vim'
" Nerdtree Git Flags
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Python Unit Testing with py.test
Plugin 'alfredodeza/pytest.vim'
" Force PEP8 Format for Python files
Plugin 'tell-k/vim-autopep8'
" Smooth Scrolling
Plugin 'terryma/vim-smooth-scroll'
" Easy Aligning
Plugin 'junegunn/vim-easy-align'



" ColorSchemes
Plugin 'sickill/vim-monokai'
Plugin 'baskerville/bubblegum'

call vundle#end()
filetype plugin indent on


" Configure Airline
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_theme = 'bubblegum'
autocmd! bufwritepost .vimrc source %

set clipboard=unnamed
set bs=2

let mapleader=","

"Movement
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
noremap <Leader>e :quit<CR>
noremap <Leader>E :qa!<CR>
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
noremap <silent> <c-y> :call smooth_scroll#down(5, 0, 1)<CR>
noremap <silent> <c-e> :call smooth_scroll#up(5, 0, 1)<CR>


map <c-j> <c-w>j
map <c-h> <c-w>h
map <c-k> <c-w>k
map <c-l> <c-w>l
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>
map <Leader>s :sort<CR>

vnoremap < <gv
vnoremap > >gv
vnoremap . :normal .<CR>
map <C-c> :nohl<CR>
noremap <C-j> :set nonumber<CR> :set norelativenumber<CR>
noremap <C-k> :set number<CR> :set relativenumber<CR>

"Syntax Highlighting & Colors
syntax on

"Mark Unneccessary Whitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/
set t_Co=256
color monokai

set laststatus=2
"Line numbers
set number
set relativenumber
set tw=79
set nowrap
set fo-=t
set colorcolumn=80
highlight ColorColumn ctermbg=16

"History and Backup
set history=700
set undolevels=700
set nobackup
set nowritebackup
set noswapfile

"Tabs and Spaces
set tabstop=8
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

"Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"Splits
set splitbelow
set splitright
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>< :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>> :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

set wildignore+=node_modules
set ruler


"Language-Specific: Javascript
let g:used_javascript_libs= 'angularjs,angularui,jquery,underscore'
let g:syntastic_javascript_checkers=['jshint']

"Folding
set nofoldenable

"Language-Specific: Python
map <Leader>g :call RopeGotoDefinition()<CR>
let ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_def_newwin="tabnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
map <Leader>b Oimport ipdb; ipdb.set_trace()
set completeopt=longest,menuone
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction
inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>

" Snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-v>"

" Alignment
nmap ga <Plug>(EasyAlign)

" Taglist
map <Leader><tab> :TlistToggle<CR>
let Tlist_Use_Right_Window = 1

" Statusline
"set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}

" NerdTree
map <leader>a :NERDTreeToggle<CR>
let g:ctrlp_map = '<c-a>'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

