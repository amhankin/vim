if exists("b:current_syntax")
  finish
endif
syn keyword fpgaCommands var
syn keyword fpgaCommands ADDW CLRW CMP COUNT DAC DACUP DDSFRQ DELAY END
syn keyword fpgaCommands INC JMP JMPNZ JMPZ LDINDF LDWR NOP SHUTR SHUTRVAR STWI
syn keyword fpgaCommands STWR 
syn match ppComment "#.*$" contains=celTodo
syn match ppPreprocessor "#define"

let b:current_syntax = "pp"
hi def link ppComment 		Comment
hi def link fpgaCommands	Statement
hi def link ppPreprocessor	Statement



