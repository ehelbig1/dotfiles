setlocal tabstop=2
setlocal shiftwidth=2

"Quickly Edit Javascript Config File
nnoremap <buffer> <leader>ef :vsplit ~/.vim/ftplugin/javascript.vim<CR>

"Refresh Page with Updated Javascript Config File
nnoremap <buffer> <leader>sf :source ~/.vim/ftplugin/javascript.vim<CR>

"Javascript Function Declaration
nnoremap <buffer> <leader>f ifunction () {<CR><CR>};<ESC>2kwi
inoremap <buffer> <leader>f function () {<CR><CR>};<ESC>2kwi

"Javascript Arrow Function Declaration
nnoremap <buffer> <leader>a i() => {<CR><CR>};<ESC>ki<Tab>
inoremap <buffer> <leader>a () => {<CR><CR>};<ESC>ki<Tab>

"Javascript Object Declaration
nnoremap <buffer> <leader>o i{<CR><CR>};<ESC>ki<Tab>
inoremap <buffer> <leader>o {<CR><CR>};<ESC>ki<Tab>

"Javascript Switch statement
nnoremap <buffer> <leader>s :0read ~/.vim/templates/javascript/switch.js<CR>f)i

"Javascript Comment Line
nnoremap <expr> <buffer> <leader>/ getline(".") =~ "//" ? "^2x\<ESC><CR>" : "I//\<ESC><CR>"

"Add Semicolon to end of line (keep cursor in same place)
nnoremap <expr> <buffer> <leader>; getline(".") =~ ";$" ? "" : "mqA;\<ESC>`q"

"Setting up eslint
setlocal errorformat+=%f:\ line\ %l\\,\ col\ %c\\,\ %trror\ -\ %m
setlocal errorformat+=%f:\ line\ %l\\,\ col\ %c\\,\ %tarning\ -\ %m
setlocal makeprg=eslint\ --format\ compact
