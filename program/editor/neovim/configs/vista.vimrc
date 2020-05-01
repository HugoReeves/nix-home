let g:vista_default_executive = 'ctags'
let g:vista_fzf_preview = ['right:50%']

let g:vista_executive_for = {
  \ 'go': 'coc',
  \ 'rust': 'coc',
  \ 'javascript': 'coc',
  \ 'typescript': 'coc',
  \ 'javascript.jsx': 'coc',
  \ 'python': 'coc',
  \ }

" Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1

" The default icons can't be suitable for all the filetypes, you can extend it as you wish.
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }

let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

"if executable('typescript-language-server')
  "au User lsp_setup call lsp#register_server({
      "\ 'name': 'typescript-language-server',
      "\ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
      "\ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json'))},
      "\ 'whitelist': ['typescript', 'typescript.tsx'],
      "\ })
"endif
