" Theme stuff
colorscheme nord
let g:lightline.colorscheme = 'nord'
hi PMenu guibg=#100e23
highlight clear ALEErrorSign
highlight ALEWarningSign guifg=yellow
highlight ALEVirtualTextWarning guifg=yellow
hi Search guibg=#ffb378 guifg=black
hi CtrlPMatch guibg=cyan guifg=black
hi CtrlPMode1 guibg=cyan guifg=black
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=#1e1c31 ctermbg=NONE
" Fix challengers horrible git diffs
hi DiffAdd guibg=#62d196 guifg=black
hi DiffDelete guibg=#ff5458 guifg=black
hi DiffChange guibg=#ffb378 guifg=black
hi DiffText guibg=#ffe9aa guifg=black

" The Defaults
let g:VIM_COLOR_SCHEME = 'nord'
