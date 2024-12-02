" Vim syntax file
" Language:		GMP style assembly
" Maintainer:		Albin Ahlbäck <albin.ahlback@gmail.com>
" Last Change:		2024 Dec 02

" We do not want to comment stuff like `#' as that not a multiplatform comment.
syn clear asmComment

" GMP style assembly uses M4 for preprocessing
syn region asmComment		start="dnl" end="$" keepend contains=asmTodo,@Spell

" Architecture independent comment
syn region asmComment		start="C" end="$" keepend contains=asmTodo,@Spell

" M4 stuff
syn match m4Function		"\<\%(define\|undefine\)\>"
syn match m4Preproc		"\<include\>"
syn match m4Statement		"\<\%(ifdef\|ifelse\|changecom\|changequote\|divert\|undivert\)\>"

hi def link m4Function  Function
hi def link m4Preproc   PreProc
hi def link m4Statement Statement

syn region asmDirective		start="\<ALIGN(" end=")"
syn region asmDirective		start="\<PROLOGUE(" end=")"
syn match asmDirective		"\<EPILOGUE()"
syn match asmDirective		"\<TEXT\>"

" vim: nowrap sw=2 sts=2 ts=8 noet
