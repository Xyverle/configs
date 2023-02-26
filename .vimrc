"	Plugins
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
	Plug 'tpope/vim-fugitive'
call plug#end()
filetype plugin on
autocmd VimEnter * ++nested Fern -drawer ..
autocmd VimEnter * wincmd p
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:default_inline_comment = '//'
let g:inline_comment_dict = {'//': ["rs", "js", "ts", "cpp", "c", "dart"],'#': ['py', 'sh'],'"': ['vim']}
inoremap <silent><expr> <tab> coc#pum#visible() ? coc#pum#confirm() : "set<tab>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "set<CR>"
"	Basic settings
set history=500
set	noerrorbells
set	number relativenumber
set hlsearch
set incsearch
set autoindent
set smartindent
set nocompatible
set termguicolors
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start
nnoremap S :%s//g<Left><Left>
nnoremap F /\</><Left><Left>
nnoremap p p`[v`]=
"	Automatically turn on/off paste mode
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
function! XTermPasteBegin()
	set pastetoggle=<Esc>[201~
	set paste
return ""
endfunction
"	Colorscheme
colorscheme onedark
let g:airline_theme='onedark'
hi Normal guibg=NONE ctermbg=NONE
