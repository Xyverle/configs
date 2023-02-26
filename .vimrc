"Plugins
call plug#begin()
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'lambdalisue/fern.vim'
	Plug 'cohama/lexima.vim'
	Plug 'joshdick/onedark.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'KarimElghamry/vim-auto-comment'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
call plug#end()
filetype plugin on
augroup my-fern-startup
	autocmd! *
	autocmd VimEnter * ++nested Fern -drawer ..
	autocmd VimEnter * wincmd p
augroup end
set termguicolors
let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'
inoremap <silent><expr> <tab> coc#pum#visible() ? coc#pum#confirm() : "\<tab>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
let g:default_inline_comment = '//'
let g:inline_comment_dict = {
		\'//': ["rs", "js", "ts", "cpp", "c", "dart"],
		\'#': ['py', 'sh'],
		\'"': ['vim']}

"Basic settings
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
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
function! XTermPasteBegin()
	set pastetoggle=<Esc>[201~	
	set paste
	return ""
endfunction
