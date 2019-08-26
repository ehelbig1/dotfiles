setlocal tabstop=8
setlocal shiftwidth=4
setlocal softtabstop=0
setlocal expandtab
setlocal smarttab

setlocal autoread

"Quickly Edit Javascript Config File
nnoremap <buffer> <leader>ef :vsplit ~/.vim/ftplugin/rust.vim<CR>

"Refresh Page with Updated Javascript Config File
nnoremap <buffer> <leader>sf :source ~/.vim/ftplugin/rust.vim<CR>

"Rust Function Declaration
nnoremap <buffer> <leader>f ifn() {<CR><CR>}<ESC>2kf(i<SPACE>
inoremap <buffer> <leader>f fn() {<CR><CR>}<ESC>2kf(i<SPACE>

"Rust Comment Line
nnoremap <expr> <buffer> <leader>/ getline(".") =~ "//" ? "^2x\<ESC><CR>" : "I//\<ESC><CR>"

"Add Semicolon to end of line (keep cursor in same place)
nnoremap <expr> <buffer> <leader>; getline('.') =~ ';$' ? '' : "mqA;\<esc>`q"

"Rust Loop
nnoremap <buffer> <leader>l iloop {}<ESC>i<CR><ESC>O
inoremap <buffer> <leader>l loop {}<ESC>i<CR><ESC>O

"Rust While Loop
nnoremap <buffer> <leader>w iwhile {}<ESC>i<CR><CR><ESC>2kf{i
inoremap <buffer> <leader>w while {}<ESC>i<CR><CR><ESC>2kf{i

"Rust For Loop
nnoremap <buffer> <leader>for ifor () {}<ESC>i<CR><CR><ESC>2kf(i
inoremap <buffer> <leader>for for () {}<ESC>i<CR><CR><ESC>2kf(i

"Rust Struct
nnoremap <buffer> <leader>s istruct {}<ESC>i<CR><CR><ESC>2kf{i
inoremap <buffer> <leader>s struct {}<ESC>i<CR><CR><ESC>2kf{i

"Rust Enum
nnoremap <buffer> <leader>e ienum {}<ESC>i<CR><CR><ESC>2kf{i
inoremap <buffer> <leader>e enum {}<ESC>i<CR><CR><ESC>2kf{i

"Rust Match
nnoremap <buffer> <leader>m imatch {}<ESC>i<CR><CR><ESC>2kf{i
inoremap <buffer> <leader>m match {}<ESC>i<CR><CR><ESC>2kf{i

"Setting make program
setlocal errorformat=%Ewarning:\ %m
setlocal errorformat+=%Eerror:\ %m,
setlocal errorformat+=%Eerror[E%n]:\ %m
setlocal errorformat+=%Z%.%#\ %f:%l:%c,
setlocal errorformat+=%C%.%#
setlocal makeprg=cargo\ check

"Format file on save
augroup onSave
	autocmd!
	autocmd BufWritePost *.rs :!cargo fmt
augroup END
