" Vim color file
" File_Name:    cascadia.vim
" Abstract:     A light theme created in honor of the Cascadia Bioregion. As
"               with the Cascadian flag, the colors of this theme are meant to
"               represent the beauty of the Pacific Northwest. 
" Maintainer:	Aaron Heuser <ahe2user at gmail dot com>
" Last Change:	02 October 2014
" Version:	1.1.0

set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "cascadia"

" Syntax Groups
hi Comment      guifg=#79a97b ctermfg=108 guibg=bg      gui=none
hi Constant     guifg=#508040 ctermfg=65 guibg=bg      gui=none
hi Identifier   guifg=#a9a61f ctermfg=142 guibg=bg      gui=bold
hi Statement    guifg=#121bc0 ctermfg=19 guibg=bg      gui=bold
hi PreProc      guifg=#121bc0 ctermfg=19 guibg=bg      gui=bold
hi PreCondit    guifg=#cc00cc ctermfg=5 guibg=bg      gui=bold
hi Type         guifg=#121bc0 ctermfg=19 guibg=bg      gui=bold
hi Special      guifg=#5080b0 ctermfg=67 guibg=bg      gui=bold
hi SpecialChar  guifg=#cc2222 ctermfg=1 guibg=bg      gui=bold
hi Underlined   guifg=#121bc0 ctermfg=19 guibg=bg      gui=underline
hi Error        guifg=bg      guibg=#ff2222 ctermbg=9 gui=none
hi Todo         guifg=#085d06 ctermfg=22 guibg=bg      gui=none

" General Groups
hi ColorColumn  guifg=#000000 ctermfg=0 guibg=#dde8e8 ctermbg=7 gui=none
hi Cursor       guifg=#ffffff ctermfg=15 guibg=#000000 ctermbg=0 gui=none
hi CursorColumn               guibg=#eeeeee ctermbg=7 gui=none
hi CursorLine                 guibg=#eeeeee ctermbg=7 gui=none
hi CursorLineNr guifg=#505050 ctermfg=239 guibg=#ffffff ctermbg=15 gui=none
hi Ignore       guifg=bg      guibg=bg      gui=none
hi LineNr       guifg=#505050 ctermfg=239 guibg=#dde8e8 ctermbg=7 gui=none
hi MatchParen                 guibg=#47e538 ctermbg=77 gui=none
hi Normal       guifg=#000000 ctermfg=0 guibg=#ffffff ctermbg=15 gui=none
hi Number       guifg=#5080b0 ctermfg=67 guibg=bg      gui=bold
hi String       guifg=#085d06 ctermfg=22 guibg=bg      gui=none

hi link Float          Number
hi link Conditional    Repeat
hi link Include        PreProc
hi link Macro          PreProc
hi link StorageClass   Type
hi link Structure      Type
hi link Typedef        Type
hi link Tag            Special
hi link Delimiter      Normal
hi link SpecialComment Special
hi link Debug          Special
