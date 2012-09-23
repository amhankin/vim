" Set style according to vim style guide
set expandtab
set textwidth=79
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
:syntax on

" Use omi code completion with SuperTab
set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" Key mappings
map <leader>ll :w\|!python %<CR>

" Set folds
set foldmethod=syntax
set foldnestmax=2

let vim_server_script = 'gvim'
let vim_client_script = 'gvim'
