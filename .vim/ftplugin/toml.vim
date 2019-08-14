setlocal tabstop=8
setlocal shiftwidth=4
setlocal softtabstop=0
setlocal expandtab
setlocal smarttab

"Quickly Edit toml  Config File
nnoremap <buffer> <leader>ef :vsplit ~/.vim/ftplugin/toml.vim<CR>

"Refresh Page with Updated toml Config File
nnoremap <buffer> <leader>sf :source ~/.vim/ftplugin/toml.vim<CR>

highlight Section ctermfg=blue
