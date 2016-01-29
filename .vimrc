autocmd! bufwritepost .vimrc source %

set pastetoggle=<F2>
set clipboard=unnamed
set mouse=a
set bs=2

let mapleader=","

noremap <C-Y> :update<CR>
vnoremap <C-Y> :update<CR>
inoremap <C-Y> :update<CR>

noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

noremap <Leader>e :quit<CR>
noremap <Leader>E :qa!<CR>

map <c-j> <c-w>j
map <c-h> <c-w>h
map <c-k> <c-w>k
map <c-l> <c-w>l
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>< :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>> :exe "vertical resize " . (winwidth(0) * 2/3)<CR>
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>
map <Leader>s :sort<CR>

nnoremap f zo
nnoremap F zc
vnoremap < <gv
vnoremap > >gv

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

set t_Co=256
color molokai

filetype off
filetype plugin indent on
syntax on

set number
set relativenumber
set tw=79
set nowrap
set fo-=t
set colorcolumn=80
highlight ColorColumn ctermbg=233

vmap Q gq
nmap Q gqap

set history=700
set undolevels=700

set tabstop=8
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

set hlsearch
set incsearch
set ignorecase
set smartcase

set nobackup
set nowritebackup
set noswapfile

set splitbelow
set splitright

call pathogen#infect()

set laststatus=2
set wildignore+=node_modules
set ruler
set showcmd

let g:user_emmet_leader_key='<Leader>g'
let g:used_javascript_libs= 'angularjs,angularui,jquery,underscore'

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
set nofoldenable

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-v>"

map <Leader><tab> :TlistToggle<CR>

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
