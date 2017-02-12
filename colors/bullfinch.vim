" Maintainer: hrls
" URL: https://github.com/hrls/bullfinch

set background=light
highlight clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "bullfinch"


fun <sid>hi(group, gui_fg, gui_bg, attrs)
    if a:gui_fg != ""
        exec "hi " . a:group . " guifg=#" . a:gui_fg
    endif
    if a:gui_bg != ""
        exec "hi " . a:group . " guibg=#" . a:gui_bg
    endif
    if a:attrs != ""
        exec "hi " . a:group . " gui=" . a:attrs . " cterm=" . a:attrs
    endif
endfun


let s:ui	    = "000000"

let s:text	    = "000000"
let s:faded	    = "666666" " faded text
let s:inversed	= "ffffff" " inversed text
let s:attractive= "aa6b3e"

let s:bground 	= "ffdab9"
let s:accent    = "d3b695" " highlighted bground
let s:alert	    = "fe3a36" " red alert

let s:keyword	= "406090"
let s:literal   = "c00058"
let s:id        = s:text

" attrs : bold, reverse, underline
" common
call <sid>hi("Normal",          s:text, s:bground, "")
call <sid>hi("LineNr",          s:faded, "", "")
call <sid>hi("CursorLineNr",    s:text, "", "")
call <sid>hi("CursorLine",      "", s:bground, "")
call <sid>hi("CursorColumn",    "", "", "")
call <sid>hi("Search",      	"", s:accent, "")
call <sid>hi("IncSearch",       "", "", "reverse")
call <sid>hi("ModeMsg",         "", "", "bold")
call <sid>hi("MoreMsg",         "", "", "bold")
call <sid>hi("Question",        s:attractive, "", "bold")
call <sid>hi("ErrorMsg",        s:inversed, s:alert, "")

" pseudos
call <sid>hi("VertSplit",       s:bground, s:ui, "bold")

" syntax
call <sid>hi("Comment",         s:faded, "", "")
call <sid>hi("Type",            s:keyword, "", "")
call <sid>hi("Constant",        s:literal, "", "")
call <sid>hi("Identifier",      s:id, "", "")

" kind of blue 005cbb 406090


delf <sid>hi
" todo: unlet s:*


