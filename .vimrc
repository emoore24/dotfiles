set nocompatible  " We don't want to worry about compatibility with vi

"====================="
"    Essentials"
"====================="
let mapleader=',' " Map Leader is a special prefix for some commands

set hidden " Show hidden buffers

set history=50   " keep track of last commands

" Set runtimepath to include Google Drive .vim
set rtp+=~/Google\ Drive/Code/env/.vim
set rtp+=~/Google\ Drive/Code/env/.vim/after

" Uncomment to automatically change the working path to the path of the current file
" autocmd BufNewFile,BufEnter * silent! lcd %:p:h

"====================="
"Vundle Plugins"
"====================="
filetype off

set rtp+=~/Google\ Drive/Code/env/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" A better statusline
Plugin 'bling/vim-airline'
" Awesome Code Completion
" Plugin 'Valloric/YouCompleteMe'
" vim-hybrid colorschme
Plugin 'w0ng/vim-hybrid'

call vundle#end()
filetype plugin indent on " for plugins

"==========================="
"Vundle Plugin Configuration"
"==========================="

" Vim Airline "
" Enable smart line, that shows buffers when there is only one tab
let g:airline#extensions#tabline#enabled = 1
set laststatus=2


"=================="
"DISPLAY Options"
"=================="

"Color Scheme"
set t_Co=256
set background=dark
let g:hybrid_custom_term_colors = 1
colorscheme hybrid

" SEOUL 256 OPTIONS
" colorscheme seoul256
" For seoul256, 233 is darkest and 239 is lightest
" let g:seoul256_background = 234


syntax on        " Turn on color highlighting
au BufReadPost *.ng set filetype=html " Syntax highlighting to html for angular templates


"Line Numbers"
set number " show line numbers
set relativenumber " relative line numbers
highlight LineNr ctermbg=8 ctermfg=white

" Ruler, cursorline (horizontal), colorcolumn (vertical)
set ruler
set cursorline     " Show which line the cursor is on
highlight CursorLine ctermbg=16
set colorcolumn=81      " Show a big column at 81 characters so I remember to wrap lines.
highlight ColorColumn ctermbg=black

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

"======================"
"Non-Display Options"
"======================"

"Quitting"
" Because I hate when I hit q: and it enters Command mode, which I never use
map q: :q<CR>
" Because I hate when I type :Q or :W because I hold shift too long when trying to save or quit.
map W w
map Q q

set clipboard+=unnamed  " Yanks go on clipboard instead.
