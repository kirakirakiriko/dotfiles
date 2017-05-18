set nocompatible " be iMproved, required
filetype off     " required
syntax off

" set the runtime path to include Vundle and initialize
  set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  " let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'



  "  -------------------------------------------------------------------🌸
  "   Plugins
  "  -------------------------------------------------------------------🌸

  "   Fundamentals
  "  -------------------------------------------------------🌸
  Plugin 'kien/ctrlp.vim'                        " Fuzzy Search
  Plugin 'vim-airline/vim-airline'               " Statusline
  Plugin 'vim-airline/vim-airline-themes'        " Color Schemes for Statusline
  Plugin 'editorconfig/editorconfig-vim'         " Use EditorConfig if available
  Plugin 'tpope/vim-surround'                    " Adds surroundings as text object
  Plugin 'scrooloose/nerdtree'                   " Filebrowser
  Plugin 'Xuyuanp/nerdtree-git-plugin'           " Git Flags for Nerdtree

  "   Code Snippets
  "  -------------------------------------------------------🌸
  Plugin 'SirVer/ultisnips'                      " Code Snippets
  Plugin 'honza/vim-snippets'                    " Collection of Snippets
  Plugin 'ervandew/supertab'                     " Tab key functionality e.g. for Ultisnips

  "   Technical Stuff
  "  -------------------------------------------------------🌸
  Plugin 'Shougo/vimproc.vim'                    " Async Process Management
  Plugin 'christoomey/vim-tmux-navigator'        " Tmux window navigation
  Plugin 'tmux-plugins/vim-tmux'                 " Tmux Syntax Highlighting

  "   Syntaxes
  "  -------------------------------------------------------🌸
  Plugin 'w0rp/ale'                              " Syntax Checking
  Plugin 'othree/yajs.vim'                       " JS
  Plugin 'heavenshell/vim-jsdoc'                 " JSDoc Helper
  Plugin 'othree/html5.vim'                      " HTML5
  Plugin 'hail2u/vim-css3-syntax'                " CSS3
  Plugin 'wavded/vim-stylus'                     " Stylus
  Plugin 'klen/python-mode'                      " Python
  Plugin 'alfredodeza/pytest.vim'                " Python Unit Testing with py.test
  Plugin 'tell-k/vim-autopep8'                   " Python PEP8 Code Formatting
  Plugin 'lervag/vimtex'                         " LaTeX
  Plugin 'raichoo/purescript-vim'                " Purescript
  Plugin 'ap/vim-css-color'                      " Highlight colors in css

  "   Color Schemes
  "  -------------------------------------------------------🌸
  Plugin 'sickill/vim-monokai'
  Plugin 'mbbill/vim-seattle'
  Plugin 'pbrisbin/vim-colors-off'
  Plugin 'roosta/vim-srcery'

  "   Utils and Nice-to-haves
  "  -------------------------------------------------------🌸
  Plugin 'taglist.vim'                           " Outline variable and functions
  Plugin 'tpope/vim-fugitive'                    " Git Integration
  Plugin 'ntpeters/vim-better-whitespace'        " Whitespace detection and stripping
  Plugin 'tpope/vim-repeat'                      " Repeat functions provided by plugins
  Plugin 'terryma/vim-smooth-scroll'             " Smooth Scrolling
  Plugin 'junegunn/vim-easy-align'               " Easy text aligning
  Plugin 'raimondi/delimitmate'                  " Autoinsert Parentheses, brackets, etc.
  Plugin 'kshenoy/vim-signature'                 " Visualize marks at the left side
  Plugin 'vim-scripts/grep.vim'                  " Easier Grep Syntax
  Plugin 'yssl/QFEnter'                          " Open Quickfixes in new Tab
  Plugin 'mattn/emmet-vim'                       " Emmet HTML Quick Scaffolding
  Plugin 'tmhedberg/matchit'                     " HTML Tags as text object
  Plugin 'dodie/vim-disapprove-deep-indentation' " Disapproves nesting ಠ_ಠ
  Plugin 'joeytwiddle/sexy_scroller.vim'         " Smooth Scrolling
  Plugin 'terryma/vim-multiple-cursors'          " Multiple Cursors like in Sublime Text
  Plugin 'scrooloose/nerdcommenter'              " Easy commenting with <leader>c[ csm]
  Plugin 'airblade/vim-gitgutter'                " Git Diff Signs on left margin
  Plugin 'chiel92/vim-autoformat'                " Automatic formatting


call vundle#end()


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



  "  -------------------------------------------------------------------🌸
  "   Visuals
  "  -------------------------------------------------------------------🌸

  syntax on         " Syntax highlighting
  set t_Co=256      " 256 Color mode, corresponds to xterm-256color
  color monokai



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

  " Smooth scrolling
  " TODO: Fix the delay when using c-y
  "noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
  "noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
  "noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
  "noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
  "noremap <silent> <c-y> :call smooth_scroll#down(5, 0, 1)<CR>
  "noremap <silent> <c-e> :call smooth_scroll#up(5, 0, 1)<CR>

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
  let g:airline_section_b = '%{ALEGetStatusLine()}'

  "   TagList
  "  -------------------------------------------------------🌸
  map <Leader><tab> :TlistToggle<CR>
  let Tlist_Use_Right_Window = 1

  "   NerdTree
  "  -------------------------------------------------------🌸
  map <leader>a :NERDTreeToggle<CR>
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

  "   Autoformat
  "  -------------------------------------------------------🌸
  au BufWritePre * :Autoformat


  "  -------------------------------------------------------------------🌸
  "   Language Specific
  "  -------------------------------------------------------------------🌸

  "   Javascript
  "  -------------------------------------------------------🌸
  let g:syntastic_javascript_checkers=['eslint']
  let g:syntastic_javascript_eslint_exe = 'npm run lint --'

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

