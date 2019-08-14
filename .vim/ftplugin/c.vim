setlocal tabstop=2
setlocal shiftwidth=2

"Quickly Edit C Config File
nnoremap <buffer> <leader>ef :vsplit ~/.vim/ftplugin/c.vim<CR>

"C Function Declaration
nnoremap <buffer> <leader>f i() {<CR><CR>};<ESC>2k0i
inoremap <buffer> <leader>f () {<CR><CR>};<ESC>2k0i

"C Structure Declaration
nnoremap <buffer> <leader>s istruct {<CR><CR>};<ESC>2kwi
inoremap <buffer> <leader>s struct {<CR><CR>};<ESC>2kwi

"C Union Declaration
nnoremap <buffer> <leader>u iunion {<CR><CR>};<ESC>2kwi
inoremap <buffer> <leader>u union {<CR><CR>};<ESC>2kwi

"C Include Statement
nnoremap <buffer> <leader>i i#include <><ESC>i
inoremap <buffer> <leader>i #include <><ESC>i
