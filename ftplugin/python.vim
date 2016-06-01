

" Generic settings
set spell

" Tab settings
	set tabstop=4
	set shiftwidth=4
	set expandtab

" Autocommands
	augroup python_autocmds
    autocmd!
    " highlight characters past column 80
    autocmd FileType python highlight Excess ctermbg=white guibg=white
    autocmd FileType python match Excess /\%80v.*/
    autocmd FileType python set nowrap
    augroup END

" Python-mode settings
	let g:pymode = 1
	let g:pymode_paths = []
    let g:pymode_options_max_line_length = 79
    let g:pymode_options = 1
    let g:pymode_options_colorcolumn = 1
    let g:pymode_python = 'python3'
    let g:pymode_indent = 1
    let g:pymode_folding = 1
    let g:pymode_motion = 1
    let g:pymode_doc = 1
    let g:pymode_run = 1
    let g:pymode_run_bind = '<leader>ll'
    let g:pymode_breakpoint = 1
    let g:pymode_lint = 1
    let g:pymode_lint_on_write = 1
	let g:pymode_quickfix_minheight = 3
	let g:pymode_quickfix_maxheight = 6
	let g:pymode_lint_ignore = "E265,E266"
	
	"Rope support
    let g:pymode_rope = 0
    let g:pymode_rope_completion = 0
    let g:pymode_rope_complete_on_dot = 0
	"let g:pymode_rope_autoimport_modules = ['os', 'shutil', 'datetime', 'pylab', 'numpy', 'scipy']
	
" Jedi-vim settings	
let g:jedi#popup_on_dot = 0

" Simply fold
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_next_blank = 1

" vim-pydocstring settings
let g:pydocstring_templates_dir = 'template/googlestyle/'
nmap <silent> <leader>l <Plug>(pydocstring)

" vim-flake8 customization
let g:flake8_cmd="/opt/local/bin/flake8"

" Switching between split screens 
noremap <C-j> <C-w><C-j>
noremap <C-k> <C-w><C-k>
noremap <C-l> <C-w><C-l>
noremap <C-h> <C-w><C-h>
