set spell
syntax spell toplevel
set completeopt=menuone,preview
set tabstop=2
set shiftwidth=2
set foldnestmax=1
set cursorline

" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:


let g:tex_flavor = 'latex'
let g:Tex_MultipleCompileFormat = 'pdf,bib,pdf'
let g:Tex_TreatMacViewerAsUNIX = 0
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 --interaction=nonstopmode $*'
let g:Tex_ViewRule_pdf = 'Skim'

" Command-R will write, compile, and forward search--thanks to
" http://reference-man.blogspot.com/2011/09/fully-integrated-latex-in-macvim.html
" preview, switch back to main window
"map <D-r> :w<cr><leader>ll:!bibtex poster<cr><leader>ll<leader>ll
map <D-r> :w<cr><leader>ll
imap <D-r> <ESC><D-r>
map <D-b> :w<cr><leader>ll:exe '!bibtex ' . expand('%:r')<cr><leader>ll<leader>ll
imap <D-b> <ESC><D-b>

" Move around more naturally when word wrapping is used
map j gj
map k gk

" Fold all but current fold
map zs zMzv

" Warnings to ignore
let g:Tex_IgnoredWarnings ='
      \"Underfull\n".
      \"Overfull\n".
      \"specifier changed to\n".
      \"You have requested\n".
      \"Missing number, treated as zero.\n".
      \"There were undefined references\n".
      \"Citation %.%# undefined\n".
      \"Marginpar on page %.%# moved\n".
      \"\oval, \circle, or \line size unavailable\n"' 

" Folding settings
"let g:Tex_FoldedSections="section,%%fakesection,subsection,subsubsection,paragraph"
let g:Tex_FoldedEnvironments="verbatim,comment,eq,gather,align,figure,table,thebibliography,keywords,abstract,titlepage,lstlisting,alertblock,block,columns"
if !exists("g:macvim_skim_app_path")
    let g:macvim_skim_app_path='/Applications/Skim.app'
endif

" Autocomplete settings:
let g:Tex_Env_figure = "\\begin{figure}%[htbp]\<CR>\\includegraphics[width=<++>\\linewidth]{<+file+>}\<CR>\\caption{<+caption text+>}\<CR>\\label{fig:<+label+>}\<CR>\\end{figure}\<CR><++>"
let g:Tex_Com_frame = "\\frame{\\frametitle{<++>}\<CR><++>\<CR>}"

"" Activate skim
"nnoremap <buffer> <localleader>v
"    \ :w<CR>
"    \ :silent !<C-r>=g:macvim_skim_app_path<CR>/Contents/SharedSupport/displayline
"    \ -r <C-r>=line(".")<CR>
"    \ %<.pdf %<CR><CR>
"
"nnoremap <buffer> <localleader>p
"    \ :w<CR>
"    \ :silent !pdflatex -synctex=1 --interaction=nonstopmode %:p <CR>
"    \ :silent !<C-r>=g:macvim_skim_app_path<CR>/Contents/SharedSupport/displayline
"    \ -r <C-r>=line(".")<CR>
"    \ %<.pdf %<CR><CR>
"
"nnoremap <buffer> <localleader>m
"    \ :w<CR>
"    \ !make <CR>
"    \ :silent !<C-r>=g:macvim_skim_app_path<CR>/Contents/SharedSupport/displayline
"    \ -r <C-r>=line(".")<CR>
"    \ %<.pdf %<CR><CR>
"" " Reactivate Vim
"nnoremap <buffer> <localleader>r
"    \ :w<CR>
"    \ :silent !<C-r>=g:macvim_skim_app_path<CR>/Contents/SharedSupport/displayline
"    \ -r <C-r>=line(".")<CR>
"    \ %<.pdf %<CR>
"    \ :silent !osascript -e "tell application \"MacVim\" to activate" <CR><CR>
"
"nnoremap <buffer> <localleader>t
"    \ :w<CR>
"    \ :silent !pdflatex -synctex=1 --interaction=nonstopmode %:p <CR>
"    \ :silent !<C-r>=g:macvim_skim_app_path<CR>/Contents/SharedSupport/displayline
"    \ -r <C-r>=line(".")<CR>
"    \ %<.pdf %<CR>
"    \ :silent !osascript -e "tell application \"MacVim\" to activate" <CR><CR>
