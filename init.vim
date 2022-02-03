" -----------------------------------------------------------------------------
" Settings:

set path=**
set rnu nu
set clipboard+=unnamedplus
set hidden
set noswapfile
set splitbelow
set splitright
set smartcase
set bg=dark

" -----------------------------------------------------------------------------
" Mappings:

nnoremap <BS> :nohlsearch<CR>
nnoremap H 0
nnoremap L $
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" -----------------------------------------------------------------------------
" Hooks:

" Remember the last position in the file
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
