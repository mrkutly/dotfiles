call plug#begin('~/.vim/plugged')
	Plug 'romainl/Apprentice'
	Plug 'haishanh/night-owl.vim'
	Plug 'w0rp/ale'
	Plug 'mxw/vim-jsx'
	Plug 'pangloss/vim-javascript'
	Plug 'elzr/vim-json'
call plug#end()

if (has("termguicolors"))
	set termguicolors
endif

syntax enable
colorscheme night-owl

" ESLint setup with ALE
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }

" Prettier Setup for javascript
autocmd FileType javascript set formatprg=prettier\ --stdin
autocmd BufWritePre *.js :normal gggqG

" Set tabs instead of spaces
set autoindent noexpandtab tabstop=4 shiftwidth=4

" Show line numbers
set number

" Set font
set guifont=Fira\ Code\ 15

" eslintrc syntax highlighting
autocmd BufNewFile,BufRead .eslintrc set ft=json
