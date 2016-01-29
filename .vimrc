autocmd! bufwritepost .vimrc source %


set clipboard=unnamed
set bs=2

let mapleader=","

"Movement
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
noremap   <C-E> 3<C-Y>
noremap   <C-Y> 3<C-E>
noremap <Leader>e :quit<CR>
noremap <Leader>E :qa!<CR>

map <c-j> <c-w>j
map <c-h> <c-w>h
map <c-k> <c-w>k
map <c-l> <c-w>l
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>
map <Leader>s :sort<CR>

vnoremap < <gv
vnoremap > >gv

"Syntax Highlighting & Colors
syntax on
filetype off
filetype plugin indent on
set t_Co=256
color molokai

"Mark Unneccessary Whitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

"Line numbers
set number
set relativenumber
set tw=79
set nowrap
set fo-=t
set colorcolumn=80
highlight ColorColumn ctermbg=233

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

call pathogen#infect()

set wildignore+=node_modules
set ruler

"Emmet
let g:user_emmet_leader_key='<tab>'

"Language-Specific: Javascript
let g:used_javascript_libs= 'angularjs,angularui,jquery,underscore'

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

" Taglist
map <Leader><tab> :TlistToggle<CR>

" Statusline
set laststatus=2
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}

" NerdTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

