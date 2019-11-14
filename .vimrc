set nocompatible
filetype off
syntax off

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
 call dein#begin('~/.cache/dein')
 call dein#add('~/.cache/dein')
 call dein#add('wsdjeg/dein-ui.vim')

  "  -------------------------------------------------------------------🌸
  "   Plugins
  "  -------------------------------------------------------------------🌸

  "   Fundamentals
  "  -------------------------------------------------------🌸
  call dein#add('kien/ctrlp.vim')                        " Fuzzy Search
  call dein#add('vim-airline/vim-airline')               " Statusline
  call dein#add('vim-airline/vim-airline-themes')        " Color Schemes for Statusline
  call dein#add('editorconfig/editorconfig-vim')         " Use EditorConfig if available
  call dein#add('tpope/vim-surround')                    " Adds surroundings as text object
  call dein#add('scrooloose/nerdtree')                   " Filebrowser
  call dein#add('easymotion/vim-easymotion')             " Vimium like navigation
  call dein#add('haya14busa/incsearch.vim')              " Highlight incremental search
  call dein#add('haya14busa/incsearch-easymotion.vim')   " Easymotion integration for incsearch
  call dein#add('haya14busa/incsearch-fuzzy.vim')        " Incremental fuzzy search

  "   Code Snippets
  "  -------------------------------------------------------🌸
  " call dein#add('SirVer/ultisnips')                      " Code Snippets
  " call dein#add('honza/vim-snippets')                    " Collection of Snippets
  " call dein#add('ervandew/supertab')                     " Tab key functionality e.g. for Ultisnips

  "   Technical Stuff
  "  -------------------------------------------------------🌸
  call dein#add('christoomey/vim-tmux-navigator')        " Tmux window navigation
  call dein#add('tmux-plugins/vim-tmux')                 " Tmux Syntax Highlighting

  "   Syntaxes
  "  -------------------------------------------------------🌸
  call dein#add('w0rp/ale')                              " Syntax Checking
  call dein#add('othree/yajs.vim')                       " JS
  call dein#add('heavenshell/vim-jsdoc')                 " JSDoc Helper
  call dein#add('othree/html5.vim')                      " HTML5
  call dein#add('hail2u/vim-css3-syntax')                " CSS3
  call dein#add('wavded/vim-stylus')                     " Stylus
  call dein#add('lervag/vimtex')                         " LaTeX

  "   Autocompletion
  "  -------------------------------------------------------🌸
  call dein#add('Shougo/deoplete.nvim')                  " Autocompletion engine
  call dein#add('carlitux/deoplete-ternjs')              " Autocompletion for JS using tern - needs tern global

  "   Color Schemes
  "  -------------------------------------------------------🌸
  call dein#add('sickill/vim-monokai')

  "   Utils and Nice-to-haves
  "  -------------------------------------------------------🌸
  call dein#add('tpope/vim-fugitive')                    " Git Integration
  call dein#add('ntpeters/vim-better-whitespace')        " Whitespace detection and stripping
  call dein#add('tpope/vim-repeat')                      " Repeat functions provided by plugins
  call dein#add('terryma/vim-smooth-scroll')             " Smooth Scrolling
  call dein#add('junegunn/vim-easy-align')               " Easy text aligning
  call dein#add('raimondi/delimitmate')                  " Autoinsert Parentheses, brackets, etc.
  call dein#add('kshenoy/vim-signature')                 " Visualize marks at the left side
  call dein#add('vim-scripts/grep.vim')                  " Easier Grep Syntax
  call dein#add('dkprice/vim-easygrep')                  " Grep with <leader>vv and <leader>vr
  call dein#add('yssl/QFEnter')                          " Open Quickfixes in new Tab
  call dein#add('tmhedberg/matchit')                     " HTML Tags as text object
  call dein#add('dodie/vim-disapprove-deep-indentation') " Disapproves nesting ಠ_ಠ
  call dein#add('terryma/vim-multiple-cursors')          " Multiple Cursors like in Sublime Text
  call dein#add('scrooloose/nerdcommenter')              " Easy commenting with <leader>c[ csm]
  call dein#add('airblade/vim-gitgutter')                " Git Diff Signs on left margin


  call dein#end()
  call dein#save_state()
endif
filetype plugin indent on


"  -------------------------------------------------------------------🌸
"   General Settings
"  -------------------------------------------------------------------🌸

set laststatus=2             " Always show statusbar
set noshowmode               " Don't show mode in statusline, it's in the air[line] tonight... oh lord
set clipboard=unnamed        " Make system clipboard accessible from vim, use "*y to copy from vim
set bs=2                     " Backspace over indentation and linebreaks
set hidden                   " Hide buffers instead of closing them, so we don't have to save upon opening a new file
set nofoldenable             " Don't fold by default
set foldmethod=syntax        " Folds defined by current syntax file
set wildignore+=node_modules " Ignore node_modules in CTRLP
set number                   " Line numbers
set relativenumber           " Relative line numbers on top"
set tw=79                    " Auto break lines when pasting over 79 characters
set nowrap                   " Don't soft-wrap lines
set nostartofline            " Don't go to start of line when scrolling
set fo-=t
set colorcolumn=80           " Highlight the 80th column
set autoindent               " Preserve indentation when adding a new line

"   History and Backup
"  -------------------------------------------------------🌸
set history=700
set undolevels=700
set writebackup              " Create backup file during writing
set nobackup                 " Delete writebackup file after writing
set noswapfile               " Most likely there will be enough memory, so no swapfile

"   Tabs and Spaces
"  -------------------------------------------------------🌸
set tabstop=2                " 2 space indentation
set softtabstop=0            " Make indentation 'fill up' the missing space
set shiftwidth=2             " 2 space indentation for < and >
set shiftround               " Make indentation 'fill up' the missing space for < and >
set expandtab                " Expand tabs to spaces

"   Searching
"  -------------------------------------------------------🌸
set hlsearch                 " Highlight search results
set incsearch                " Search as you type
set ignorecase               " Case insensitive searching
set smartcase                " Case sensitive searching, when an uppercase letter is entered

"   Splits
"  -------------------------------------------------------🌸
set splitbelow               " Open splits below by default
set splitright               " Open splits to the right by default

"   Netrw
"  -------------------------------------------------------🌸
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3
let g:netrw_banner = 0
let g:netrw_winsize = 25

"  -------------------------------------------------------------------🌸
"   Visuals
"  -------------------------------------------------------------------🌸

syntax on         " Syntax highlighting
set t_Co=256      " 256 Color mode, corresponds to xterm-256color
color monokai

hi Search ctermbg=green
hi Search ctermfg=black

hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment

hi link EasyMotionTarget2First MatchParen
hi link EasyMotionTarget2Second MatchParen

hi link EasyMotionMoveHL Search
hi link EasyMotionIncSearch Search




"  -------------------------------------------------------------------🌸
"   Keybindings
"  -------------------------------------------------------------------🌸

let mapleader=","
let maplocalleaer="-"

" Don't use arrow keys for movement! It's hard mode ;)
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Change windows / splits with Ctrl + Movement keys
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h

" Tab changing
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" Indentation in Visual Mode
vnoremap < <gv
vnoremap > >gv

" Use . in visual mode
vnoremap . :normal .<CR>

" Clear search highlighting
map <C-c> :nohl<CR>

" Easy Align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Resize Splits
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>< :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader>> :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

" NerdTree
map <leader>a :NERDTreeToggle<CR>



"  -------------------------------------------------------------------🌸
"   Plugin Settings
"  -------------------------------------------------------------------🌸

"   AirLine
"  -------------------------------------------------------🌸
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_theme = 'bubblegum'
call airline#parts#define_function('ALE', 'ALEGetStatusLine')
call airline#parts#define_condition('ALE', 'exists("*ALEGetStatusLine")')
let g:airline_section_b = airline#section#create_right(['ALE'])

"   TagList
"  -------------------------------------------------------🌸
map <Leader><tab> :TlistToggle<CR>
let Tlist_Use_Right_Window = 1

"   NerdTree
"  -------------------------------------------------------🌸
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"   DelimitMate
"  -------------------------------------------------------🌸
let delimitMate_expand_cr = 1

"   CtrlP
"  -------------------------------------------------------🌸
let g:ctrlp_map = '<c-a>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_max_depth=100

"   UltiSnips
"  -------------------------------------------------------🌸
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsEditSplit="vertical"

"   SuperTab
"  -------------------------------------------------------🌸
let g:SuperTabDefaultCompletionType = '<C-x><C-o>'

"   Easy Align
"  -------------------------------------------------------🌸
nmap ga <Plug>(EasyAlign)

"   Sexy Scroller
"  -------------------------------------------------------🌸
let g:SexyScroller_ScrollTime = 20

"   ALE
"  -------------------------------------------------------🌸
let g:ale_fixers = {
\ 'javascript': [
\   'eslint',
\ ],
\}

nmap <A-L> :ALEFix<CR>
let g:ale_echo_msg_error_str = '過ち'
let g:ale_echo_msg_warning_str = '断り'
let g:ale_lint_delay = 100
let g:ale_statusline_format = ['%d 過ち', '%d 断り', '大丈夫']

"   Deoplete
"  -------------------------------------------------------🌸
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#ternjs#docs = 1
let g:deoplete#sources#ternjs#case_insensitive = 1

"   Incsearch / Easymotion
"  -------------------------------------------------------🌸
function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzyword#converter()],
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())


"  -------------------------------------------------------------------🌸
"   Language Specific
"  -------------------------------------------------------------------🌸

"   Javascript
"  -------------------------------------------------------🌸
let g:ale_javascript_eslint_use_global = 1

let g:jsdoc_enable_es6=1
let g:jsdoc_allow_input_prompt=1
let g:jsdoc_input_description=1
let g:jsdoc_underscore_private=0
let g:jsdoc_access_descriptions=2

"   Python
"  -------------------------------------------------------🌸
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



"  -------------------------------------------------------------------🌸
"   Utils and Fixes
"  -------------------------------------------------------------------🌸

autocmd! bufwritepost .vimrc source % " Reload the config, when saving vimrc

" Fix color bleed in tmux
if &term =~ '256color'
  set t_ut=
endif
