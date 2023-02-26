call plug#begin()
	Plug 'neoclide/coc.nvim', {'branch': 'release'} " lsp
	Plug 'lambdalisue/fern.vim' " file explorer
	Plug 'cohama/lexima.vim' " indenting
	Plug 'joshdick/onedark.vim' " colorscheme
	Plug 'vim-airline/vim-airline' " line
	Plug 'vim-airline/vim-airline-themes' " line themes
	Plug 'KarimElghamry/vim-auto-comment' " auto commenting
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fuzzy finder
	Plug 'junegunn/fzf.vim', " fuzzy finder part 2
	Plug 'mg979/vim-visual-multi', {'branch': 'master'} " multiple cursors
call plug#end()

nnoremap p p`[v`]=
filetype plugin on
autocmd VimEnter * ++nested Fern -drawer ..
autocmd VimEnter * wincmd p
set termguicolors
let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'
inoremap <silent><expr> <tab> coc#pum#visible() ? coc#pum#confirm() : "\<tab>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
let g:multi_cursor_use_default_mapping=1
let g:default_inline_comment = '//'
let g:inline_comment_dict = {
		\'//': ["rs", "js", "ts", "cpp", "c", "dart"],
		\'#': ['py', 'sh'],
		\'"': ['vim']}

"Basic settings
set nocompatible
colorscheme onedark
hi Normal guibg=NONE ctermbg=NONE
set number relativenumber
set hlsearch
set incsearch
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
nnoremap S :%s//g<Left><Left>

" Automatically turn on/off paste mode
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
	set pastetoggle=<Esc>[201~
	set paste
return ""
endfunction
