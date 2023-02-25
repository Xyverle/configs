"plugins
call plug#begin()
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'itchyny/lightline.vim'
	Plug 'preservim/nerdtree'
	Plug 'joshdick/onedark.vim'
call plug#end()

filetype plugin on
set laststatus=2
autocmd VimEnter * NERDTree | wincmd p 
let g:lightline = {
	\ 'colorscheme': 'onedark',
	\ }
inoremap <silent><expr> <tab> coc#pum#visible() ? coc#pum#confirm() : "\<tab>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

"basic settings
colorscheme onedark
hi Normal guibg=NONE ctermbg=NONE
set number relativenumber
set hlsearch
set incsearch
set autoindent
set smartindent
set tabstop=3
set softtabstop=3
set shiftwidth=4
nnoremap S :%s//g<Left><Left>
"^ when you press capital S in normal mode it opens find/replace

"Closing Stuff
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap < <><Left>

" Automatically turn on/off paste mode
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction
