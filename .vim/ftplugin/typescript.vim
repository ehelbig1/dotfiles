setlocal tabstop=4
setlocal shiftwidth=4

"Quickly Edit TypeScript Config File
nnoremap <buffer> <leader>ef :vsplit ~/.vim/ftplugin/typescript.vim<CR>

"Refresh Page with Updated TypeScript Config File
nnoremap <buffer> <leader>sf :source ~/.vim/ftplugin/typescript.vim<CR>

"TypeScript Function Declaration
nnoremap <buffer> <leader>f ifunction () {<CR><CR>};<ESC>2kwi
inoremap <buffer> <leader>f function () {<CR><CR>};<ESC>2kwi

"TypeScript Arrow Function Declaration
nnoremap <buffer> <leader>a i() => {<CR><CR>};<ESC>ki<Tab>
inoremap <buffer> <leader>a () => {<CR><CR>};<ESC>ki<Tab>

"TypeScript Object Declaration
nnoremap <buffer> <leader>o i{<CR><CR>};<ESC>ki<Tab>
inoremap <buffer> <leader>o {<CR><CR>};<ESC>ki<Tab>

"TypeScript Comment Line
nnoremap <buffer> <leader>/ I//<ESC>
inoremap <buffer> <leader>/ <ESC>I//<ESC>

"Add Semicolon to end of line (keep cursor in same place)
nnoremap <expr> <buffer> <leader>; getline('.') =~ ';$' ? '' : "mqA;\<esc>`q"

"Setting up typscript compiler
"setlocal makeprg=
