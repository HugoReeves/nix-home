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
nnoremap <leader>ff :FZF<CR>

" Filetree mappings
map <leader>t :NERDTreeToggle<CR>

map <leader>nh :noh<CR>

" Copy/Paste from register
" vnoremap <leader>cc "*y
" map <leader>vv "*p

