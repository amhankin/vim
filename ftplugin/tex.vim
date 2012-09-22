" When wrapping words use a newline character
set wm=1		" automatically wraps words near margin
set textwidth=78
set autoread
set iskeyword+=:
set spell
let g:Tex_DefaultTargetFormat = 'pdf'

let g:Tex_ViewRule_dvi = 'okular' 
let g:Tex_ViewRule_pdf = 'evince'
"let g:Tex_CompileRule_pdf = 'pdflatex --interaction=nonstopmode -file-line-error-style $*'
let g:Tex_CompileRule_pdf = 'pdflatex --interaction=nonstopmode $*'

" Change folding behavior
let g:Tex_FoldedSections="section,%%fakesection,subsection,subsubsection,paragraph"
let g:Tex_FoldedEnvironments="verbatim,comment,eq,gather,align,figure,table,thebibliography,keywords,abstract,titlepage,lstlisting"
let g:Tex_MultipleCompileFormats="pdf"

" Don't goto errors when they occur
let g:Tex_GotoError=0

map \j :edit ++enc=euc-jp<CR>




" Fast command insert
let g:Tex_Com_deriv = "\\frac{d <++>}{d <++>}<++>"
let g:Tex_Com_pderiv = "\\frac{\\partial <++>}{\\partial <++>}<++>"
" let g:Tex_Com_pderiv = "\\pderiv[<++>]{<++>}{<++>}<++>"
let g:Tex_Com_eqref = "\\eqref{eq:<++>}<++>"
let g:Tex_Com_ket = "\\left| <++> \\right> <++>"
let g:Tex_Com_bra = "\\left< <++> \\right| <++>"
let g:Tex_Com_braket = "\\left< <++> \\right| <++> \\left| <++> \\right> <++>"
let g:Tex_Com_ketbra = "\\left| <++> \\right>\\!\\left< <++> \\right| <++>"



let g:Tex_Env_matrix = "\\left(\\begin{array}{<++>}\<CR><++>\<CR>\\end{array}\\right)<++>"
let g:Tex_Env_figure = "\\begin{figure}%[htbp]\<CR>\\begin{center}\<CR>\\scalebox{<++>}{\\includegraphics{<+file+>}}\<CR>\\end{center}\<CR>\\caption{<+caption text+>}\<CR>\\label{fig:<+label+>}\<CR>\\end{figure}\<CR><++>"
let g:Tex_Env_figurev = "\\begin{figure}%[htbp]\<CR>\\begin{center}\<CR>\\subfloat[<++>]{\<CR>\\scalebox{<++>}{\\includegraphics{<+file+>}}}\<CR>\\vspace{0.1cm}\<CR>\<CR>\\subfloat[<++>]{\<CR>\\scalebox{<++>}{\\includegraphics{<+file+>}}}\<CR>\\end{center}\<CR>\\caption{<+caption text+>}\<CR>\\label{fig:<+label+>}\<CR>\\end{figure}\<CR><++>"
