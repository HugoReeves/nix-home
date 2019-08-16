call plug#begin()


" Utilities
"
" Awesome intellisense completion engine, relies on Language Servers
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
" Tree view for local directory
"Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-vinegar'
" Easily comment and uncomment lines
Plug 'scrooloose/nerdcommenter'
" Coc compatable LSP symbol finder and viewer
Plug 'liuchengxu/vista.vim'
" Fuzzy finder
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
"Plug '/usr/bin/env fzf'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Easily surround text objects with other characters
Plug 'tpope/vim-surround'
" Integration with livedown for .md previews
"Plug 'shime/vim-livedown'
" Vim Tables
"Plug 'dhruvasagar/vim-table-mode'

" Git Stuff
"
Plug 'tpope/vim-fugitive'
Plug 'niklaas/lightline-gitdiff'
Plug 'rhysd/git-messenger.vim'


" Themeing
"
Plug 'ayu-theme/ayu-vim'
" General text theme
Plug 'challenger-deep-theme/vim', { 'name': 'challenger-deep' }
" Statusline
Plug 'itchyny/lightline.vim'
" Extras for lightline
Plug 'sainnhe/lightline_foobar.vim'
" Nerdfont icons and symbols for nerdtree and others
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'

"
""" Language Specific Stuff
"
Plug 'LnL7/vim-nix'

" Typescript
" Plug 'HerringtonDarkholme/yats.vim'
" Plug 'pangloss/vim-javascript'
"Plug 'quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'

" Go
Plug 'fatih/vim-go'

" Other Languages
Plug 'cespare/vim-toml'
Plug 'dag/vim-fish'
Plug 'ledger/vim-ledger'

call plug#end()
