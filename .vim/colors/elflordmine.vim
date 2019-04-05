" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Ron Aaron <ron@ronware.org>
" Last Change:	2003 May 02

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "elflordmine"
hi Normal		guifg=cyan			guibg=black
hi Comment	term=bold		ctermfg=DarkGray	guifg=#80a0ff
hi Constant	term=underline	ctermfg=Blue		guifg=Magenta
hi Special		ctermfg=Red	guifg=Red
hi Identifier term=underline	cterm=bold	ctermfg=Cyan guifg=#40ffff
hi Statement 	ctermfg=White
hi PreProc		ctermfg=Cyan	
hi Type			ctermfg=DarkCyan	
hi Function		ctermfg=Blue 
hi Repeat		ctermfg=White	
hi Operator				ctermfg=Red
hi Ignore				ctermfg=black
hi Error	 ctermbg=Red ctermfg=White 
hi Todo	term=standout ctermbg=Yellow ctermfg=Black guifg=Blue guibg=Yellow

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
hi link String	Constant
hi link Character	Constant
hi link Number	Constant
hi link Boolean	Constant
hi link Float		Number
hi link Conditional	Repeat
hi link Label		Statement
hi link Keyword	Statement
hi link Exception	Statement
hi link Include	PreProc
hi link Define	PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment Special
hi link Debug		Special
