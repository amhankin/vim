
if !exists("*s:MakeFolds")
	function s:MakeFolds(force)
		" Fold area where constants are defined (must be at begining of file)
		let startpat = "## Constant defenitions"
		let endpat = "## Function defenitions"
		let startoff = 1
		let endoff = -2
		call AddSyntaxFoldItem(startpat, endpat, startoff, endoff)

		" Fold defined functions (must be after defined constants
		let startpat = "function "
		let endpat = "endfunction"
		let startoff = 0
		let endoff = 1
		call AddSyntaxFoldItem(startpat, endpat, startoff, endoff)

		" Folds program body (should be last part of program)
		let startpat = "## Program body"
		let endpat = "##"
		let startoff = 1
		let endoff = 0
		call AddSyntaxFoldItem(startpat, endpat, startoff, endoff)

		call MakeSyntaxFolds(a:force)
		normal! zM
	endfunction 
endif

call s:MakeFolds(0)
set tabstop=2
set shiftwidth=2
