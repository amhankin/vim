" Generic settings for all filetypes
	set nocompatible
	set history=100
	set undolevels=200
	set showmode
	set number
	set autoindent
	set showcmd
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4
    "set expandtab
	set linebreak
	set wrap
	set autochdir
	set noeb vb t_vb= 		" No errorbells?
	set ruler				" Display column and row
	set hlsearch			" highlight search terms
	set completeopt=menuone,preview,longest

" Sytnax highlighting stuff
	if $COLORTERM == 'gnome-terminal'
	  set t_Co=256
	endif
	let g:solarized_termcolors=256
	"let g:solarized_contrast="high"
	syntax enable
	colorscheme solarized
	if has('gui_running')
		set background=light
	else
		set background=light
	endif

" Vundle Settings
" How install Vundle: 
" https://github.com/VundleVim/Vundle.vim.git
	set nocompatible
	filetype off
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#rc()

	" let Vundle manage Vundle
	" required! 
	Plugin 'gmarik/Vundle.vim'
	Plugin 'fholgado/minibufexpl.vim'
	Plugin 'vim-latex/vim-latex'
	Plugin 'altercation/vim-colors-solarized'
	Plugin 'amhankin/taglist.vim'
	Plugin 'heavenshell/vim-pydocstring'
	"Plugin 'tmhedberg/SimpylFold'
	Plugin 'amhankin/SimpylFold'
	Plugin 'davidhalter/jedi-vim'
	Plugin 'keflavich/macvim-skim'
	Plugin 'nvie/vim-flake8'
	Plugin 'chrisbra/csv.vim'
	"Plugin 'klen/python-mode'

	" The bundles you install will be listed here
	filetype plugin indent on

" Automatically detect csv files
if exists("did_load_csvfiletype")
	finish
endif
let did_load_csvfiletype=1
augroup filetypedetect
	au! BufRead,BufNewFile *.csv,*.dat	setfiletype csv
augroup END
let g:csv_highlight_column = 'y'


" Minibufexpl settings (tab like buffer tracking)
    let g:miniBufExplMapCTabSwitchBufs = 1 
	let g:miniBufExplMapWindowNavVim = 1
	let g:miniBufExplModSelTarget = 1

" Taglist.vim settings
	nnoremap <silent> <leader>c :TlistToggle<CR>



"Key mappings
	" Enclose selected text in secific symbol
	vmap \p <Esc>`>a)<Esc>`<i(<Esc>`>3l
	vmap \c <Esc>`>a}<Esc>`<i{<Esc>`>3l
	vmap \q <Esc>`>a"<Esc>`<i"<Esc>`>3l
	vmap \4 <Esc>`>a$<Esc>`<i$<Esc>`>3l
	vmap \b <Esc>`>a]<Esc>`<i[<Esc>`>3l
	map \j :edit ++enc=euc-jp<CR>

	" More natural split navigation
	nnoremap <C-J> <C-W><C-J>
	nnoremap <C-K> <C-W><C-K>
	nnoremap <C-L> <C-W><C-L>
	nnoremap <C-H> <C-W><C-H>
	
	" Avoid annoying 'man' search hotkey
	map K k 		

	"Allow paste to paste over highlighted text in visual mode
	vnoremap p <Esc>:let current_reg = @"<CR>gvs<C-R>=current_reg<CR><Esc>
