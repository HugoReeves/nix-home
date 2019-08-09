let mapleader=" "
let maplocalleader="-"

" nnoremap ; :
" nnoremap : ;
nnoremap <leader>r :source $MYVIMRC<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>x :x<CR>

" Quickly send output
nnoremap <leader>> :!<space>

" Git mappings
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gb :Gblame<CR>

" FZF mappings
nnoremap <leader>f :GFiles<CR>
nnoremap <leader>F :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>h :History<CR>
nnoremap <leader>G :Rg<CR>
"nnoremap <leader>t :BTags<CR>
"nnoremap <leader>T :Tags<CR>

map <leader>nh :noh<CR>

" Copy/Paste from register
" vnoremap <leader>cc "*y
" map <leader>vv "*p

