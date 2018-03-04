set nocompatible  " We don't want to worry about compatibility with vi

"====================="
"    Essentials"
"====================="
let mapleader=',' " Map Leader is a special prefix for some commands

set hidden " Show hidden buffers

set history=50   " keep track of last commands

" Uncomment to automatically change the working path to the path of the current file
" autocmd BufNewFile,BufEnter * silent! lcd %:p:h


"====================="
"Vim Plugins"
"====================="

" The following installs vim-plug if it is not installed.
" Taken from https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/bundle') " use .vim/bundle as plugin directory

" A better statusline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Awesome Code Completion
" Plug 'Valloric/YouCompleteMe'
" nerdtree, load on demand when we invoke it
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
" Commenting Plug
Plug 'tpope/vim-commentary'
" Emmet, load for html or css
Plug 'mattn/emmet-vim', {'for': ['html', 'css']}
" Show git diffs in gutter
Plug 'airblade/vim-gitgutter'
" Code snippet engine
Plug 'SirVer/ultisnips'
" Actual code snippets
Plug 'honza/vim-snippets'
" CtrlP is a fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'
" Auto set paste
Plug 'ConradIrwin/vim-bracketed-paste'
" Better javascript syntax support
Plug 'pangloss/vim-javascript', {'for': 'javascript'}
" Syntax checking
" Plug 'scrooloose/syntastic'
" Asynchronous Syntax checking
Plug 'w0rp/ale'
" typescript
Plug 'leafgarland/typescript-vim', {'for': 'typescript'}
" Color Schemes
Plug 'chriskempson/base16-vim'
Plug 'dracula/vim', { 'as': 'dracula' }

if has('nvim')
  " NEOVIM plugins go here
  " Language Server Protocol Client
  Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
  " Completion Engine
  Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
endif

call plug#end()

"==========================="
"Vundle Plugin Configuration"
"==========================="

" Vim Airline "
" Enable smart line, that shows buffers when there is only one tab
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

" Nerdtree
" Open with ctrl-\
map <C-\> :NERDTreeToggle<CR>
" Open current directory with ctrl-d
map <C-d> :NERDTree %:h<CR>

" Emmet
" Enable emmet just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
" Leader for Emmet
let g:user_emmet_leader_key='<C-Y>'

" Utilsnips
" Different triggers
let g:UltiSnipsExpandTrigger = "<C-j>"
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"
" Define snippets folder
let g:UltiSnipsSnippetsDir = "~/.vim/bundle/vim-snippets/UltiSnips"
let g:UltiSnipsSnippetsDirectories = ["UltiSnips"]
" Automatically load jasmine snippets with javascript/typescript
autocmd FileType javascript UltiSnipsAddFiletypes javascript-jasmine
autocmd FileType typescript UltiSnipsAddFiletypes javascript-jasmine

" CtrlP

" Uncomment below to stop clearing filenames cache to speed up ctrlp
" (manually refresh with <F5>
" let g:ctrlp_clear_cache_on_exit = 0

" Wait 200 ms after typing to update window
let g:ctrlp_lazy_update = 200
" Set working path to cwd
let g:ctrlp_working_path_mode = 'ra'
" exclude node_modules, .git, .sass-cache
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|node_modules|\.sass-cache)$',
  \ }
" Buffer switching with C-b
map <C-b> :CtrlPBuffer<CR>
let g:ctrlp_max_files=0
let g:ctrlp_max_depth = 48

" Vim Javasript
" jsdoc syntax highlighting
let g:javascript_plugin_jsdoc = 1

" Deoplete (Neovim)
let g:deoplete#enable_at_startup=1
" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" LanguageClient (Neovim)
" Automatically start language servers.
let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {}
" javascript/typescript language server
if executable('javascript-typescript-stdio')
  let g:LanguageClient_serverCommands.javascript = ['javascript-typescript-stdio']
  let g:LanguageClient_serverCommands.typescript = ['javascript-typescript-stdio']
else
  echo "javascript-typescript-stdio not installed!\n"
endif
"shortcuts
nnoremap <silent> <leader>h :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> <leader>gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>


" Syntastic
" always populate the location list with errors...
let g:syntastic_always_populate_loc_list = 1
" but don't auto open the location list
let g:syntastic_auto_loc_list = 0
" run syntastic when opening files...
let g:syntastic_check_on_open = 1
" but don't run when saving and quiting
let g:syntastic_check_on_wq = 0
" show all errors from all checkers at once
let g:syntastic_aggregate_errors = 1
" show which checker produced which error/warning
let g:syntastic_id_checkers = 1
" Uncomment these for checkers
" let g:syntastic_javascript_checkers = ['glint']
" let g:syntastic_java_checkers = ['glint']
" ignore angular templates
let g:syntastic_ignore_files = ['.*\.ng', '.*\.ng\.html']

"=================="
"DISPLAY Options"
"=================="

"Color Scheme"
set t_Co=256
set background=dark
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
" silent! colorscheme dracula
" silent! colorscheme base16-grayscale-dark
" let g:airline_theme='base16_grayscale'
silent! colorscheme base16-gruvbox-dark-hard
" silent! colorscheme base16-gruvbox-light-soft


syntax on        " Turn on color highlighting
au BufReadPost *.ng set filetype=html " Syntax highlighting to html for angular templates


"Line Numbers"
set number " show line numbers
set relativenumber " relative line numbers
" highlight LineNr ctermbg=black ctermfg=white

" Ruler, cursorline (horizontal), colorcolumn (vertical)
set ruler
set cursorline     " Show which line the cursor is on
" highlight CursorLine ctermbg=16
set colorcolumn=81      " Show a big column at 81 characters so I remember to wrap lines.
au BufReadPost *.ng set colorcolumn=101 " templates get column at 101 characters
au BufReadPost *.java set colorcolumn=101 " java files get column at 101 characters
au BufReadPost *.js set colorcolumn=81 " javascript files get column at 81 characters
au BufReadPost *.ts set colorcolumn=81 " typescript files get column at 81 characters
" highlight ColorColumn ctermbg=16

"Searching
set incsearch    " incremental searching on
set hlsearch     " highlight all matches.

"Spacing"
set expandtab      " Instead of a tab character, switch it to the equivalent number of spaces
set autoindent
set shiftwidth=2 " set shiftwidth to 2
set softtabstop=2
" use » to mark Tabs and ° to mark trailing whitespace. This is a
" non-obtrusive way to mark these special characters.
set list listchars=tab:»\ ,trail:°

" Matching
set incsearch           " incremental searching on
set hlsearch            " highlight all matches
set showmatch           " Show matching braces.

" Line wrapping on by default
set wrap
set linebreak


" WINDOWS
set splitright " always split to the right
set splitbelow "always split to the bottom
" This makes it easier to switch between vim panes if you have multiple open.
" Control+L will move the cursor one pane Right, etc.
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" TABS
" tab navigation like firefox
nnoremap <S-tab> :tabprevious<CR>
nnoremap <tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <S-tab> <Esc>:tabprevious<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

" Scroll Offset (how many lines above/below cursor at all times)
set scrolloff=10

if has('nvim')
  " map ,ht to open terminal in horizontal split
  nnoremap <leader>ht :hs | te
  " map ,vt to open terminal in vertical split
  nnoremap <leader>vt :vs | te
  " Map escape to stop insert mode when in neovim terminal
  tnoremap <Esc> <C-\><C-n>
endif

"======================"
"Non-Display Options"
"======================"

"Quitting"
" Because I hate when I hit q: and it enters Command mode, which I never use
map q: :q<CR>
" Because I hate when I type :Q or :W because I hold shift too long when trying to save or quit.
map W w
map Q q

" set ctrl-c to copy/yank into clipboard register
map <C-c> "+y<CR>"

set backspace=indent,eol,start

