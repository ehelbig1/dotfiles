setlocal tabstop=2
setlocal shiftwidth=2

"Quickly Edit Markdown Config File
nnoremap <buffer> <leader>ef :vsplit ~/.vim/ftplugin/markdown.vim<CR>

"Refresh Page With Updated Markdown Config File
nnoremap <buffer> <leader>sf :source ~/.vim/ftplugin/markdown.vim<CR>

"Add Header Section -----------------{{{
nnoremap <buffer> <leader>h1 0i#<SPACE>
inoremap <buffer> <leader>h1 <ESC>0i#<SPACE>
nnoremap <buffer> <leader>h2 0i##<SPACE>
inoremap <buffer> <leader>h2 <ESC>0i##<SPACE>
nnoremap <buffer> <leader>h3 0i###<SPACE>
inoremap <buffer> <leader>h3 <ESC>0i###<SPACE>
nnoremap <buffer> <leader>h4 0i####<SPACE>
inoremap <buffer> <leader>h4 <ESC>0i####<SPACE>
nnoremap <buffer> <leader>h5 0i#####<SPACE>
inoremap <buffer> <leader>h5 <ESC>0i#####<SPACE>
nnoremap <buffer> <leader>h6 0i######<SPACE>
inoremap <buffer> <leader>h6 <ESC>0i######<SPACE>
"}}}

"Change Header Content
onoremap <buffer> ih :<C-u>execute "normal! ?^#\r:nohlsearch\r/\\s\rlvg_"<CR>

"Italicize word
nnoremap <leader>i viw<ESC>a*<ESC>bi*<ESC>E
inoremap <leader>i __<ESC>i

"Bold word
nnoremap <leader>b viw<ESC>a**<ESC>Bi**<ESC>E
inoremap <leader>b ****<ESC>hi

"Cross-out word
nnoremap <leader>x viw<ESC>a~~<ESC>Bi~~<ESC>E

"Links
nnoremap <leader>ln viw<ESC>a]()<ESC>Bi[<ESC>f(a
inoremap <leader>ln []()<ESC>F]i

"Images
nnoremap <leader>img o![]()<ESC>F]i
inoremap <leader>img <CR>![]()<ESC>F]i

"Code Snippets
nnoremap <leader>` viw<ESC>a`<ESC>I`<ESC>E
inoremap <leader>` ``<ESC>i

"Code lines
nnoremap <leader>cl }g_a```<ESC>{o```
inoremap <leader>cl ```<CR><CR>```<ESC>2kg_a
