setlocal tabstop=2
setlocal shiftwidth=2

"Quickly Edit Javascript Config File
nnoremap <buffer> <leader>ef :vsplit ~/.vim/ftplugin/javascript.vim<CR>

"Refresh Page with Updated Javascript Config File
nnoremap <buffer> <leader>sf :source ~/.vim/ftplugin/javascript.vim<CR>
