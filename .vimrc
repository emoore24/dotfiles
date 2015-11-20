set nocompatible  " We don't want to worry about compatibility with vi


"====================="
"Vundle Configuration"
"====================="
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

filetype plugin indent on " for plugins

let mapleader=',' " Map Leader is a special prefix for some commands

" Automatically change the working path to the path of the current file
autocmd BufNewFile,BufEnter * silent! lcd %:p:h

"=================="
"Formatting Options"
"=================="

"Color Scheme"
set t_Co=256
colorscheme apprentice
syntax on        " Turn on color highlighting
au BufReadPost *.ng set filetype=html " Syntax highlighting to html for angular templates

set history=50   " keep track of last commands

"Line Numbers"
set number " show line numbers
set relativenumber " relative line numbers
highlight LineNr ctermbg=8 ctermfg=white

set ruler
set incsearch    " incremental searching on
set hlsearch     " highlight all matches.
set cursorline     " Show which line the cursor is on
highlight CursorLine ctermbg=16


"Spacing"
set expandtab      " Instead of a tab character, switch it to the equivalent number of spaces
set autoindent
set shiftwidth=2 " set shiftwidth to 2
set softtabstop=2
" use » to mark Tabs and ° to mark trailing whitespace. This is a
" non-obtrusive way to mark these special characters.
set list listchars=tab:»\ ,trail:°

set clipboard+=unnamed  " Yanks go on clipboard instead.
set showmatch           " Show matching braces.
set colorcolumn=81      " Show a big column at 81 characters so I remember to wrap lines.
highlight ColorColumn ctermbg=8

" Line wrapping on by default
set wrap
set linebreak
 
"Panes"
set splitright " always split to the right
set splitbelow "always split to the bottom
" This makes it easier to switch between vim panes if you have multiple open.
" Control+L will move the cursor one pane Right, etc.
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
 
"Quitting"
" Because I hate when I hit q: and it enters Command mode, which I never use
map q: :q<CR>
" Because I hate when I type :Q or :W because I hold shift too long when trying to save or quit.
command W w
command Q q

" tab navigation like firefox
nnoremap <S-tab> :tabprevious<CR>
nnoremap <tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <S-tab> <Esc>:tabprevious<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

