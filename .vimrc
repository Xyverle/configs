colorscheme onedark
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
syntax on
set number relativenumber
set hlsearch
set incsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
nnoremap S :%s//g<Left><Left>
filetype indent on
set noshowmode
"closing shit
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
"lightline
set laststatus=2
let g:lightline = {
		\ 'colorscheme': 'onedark',
		\ }
