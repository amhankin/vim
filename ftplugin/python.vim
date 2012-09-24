" Set style according to vim style guide
setlocal expandtab
setlocal textwidth=79
setlocal tabstop=8
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal autoindent
:syntax on

" Use omi code completion with SuperTab
set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" Key mappings
map <leader>ll :w\|!python %<CR>
map <silent><leader>rf :set foldmethod=indent<CR>

" Set folds
au bufwinenter *.py setlocal foldmethod=indent
au bufwinenter *.py setlocal foldnestmax=2

"let vim_server_script = 'gvim'
"let vim_client_script = 'gvim'
