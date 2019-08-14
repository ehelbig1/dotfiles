"Setting \ as leader
let mapleader = "\\"

"Turning on filetype. Specific file configuration can be found in
"	~/.vim/ftplugin/<type>.vim
filetype plugin indent on

"Set no-compatible to prevent vim acting like vi
set nocp

"Turn on syntax highlighting
syntax on

"Add Line Numbers
set relativenumber

nnoremap \|n :set relativenumber!<CR>

"Set tab indentation
set tabstop=4
set shiftwidth=4

"Set backspace
set backspace=2

"Setup Ctags
set tags=tags
nnoremap <leader>. :CtrlPTag<CR>

"Turn on search highlighting and increment
set hlsearch
set incsearch

"Set up netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 2
let g:netrw_winsize = 25
let g:netrw_altv = 1

"Setup wildmenu -------------- {{{
set wildmenu
set wildmode=list:longest,full
" }}}

"Set Statusline -------------- {{{>
set statusline=%F         " Path to the file
set statusline+=\ -
set statusline+=\ %y
set statusline+=%=        " Switch to the right side
set statusline+=%l        " Current line
set statusline+=/         " Separator
set statusline+=%L        " Total lines
" }}}

"Remap <ESC ------------------- {{{>
nnoremap '' <ESC> 
inoremap '' <ESC>
vnoremap '' <ESC>
cnoremap '' <ESC>
onoremap '' <ESC>
" }}}

"Remap <C-w> ---------------- {{{
nnoremap <leader>w <C-w>
inoremap <leader>w <C-w>
vnoremap <leader>w <C-w>
onoremap <leader>w <C-w>
cnoremap <leader>w <C-w>
" }}}

"Setting up custom filetypes ------------- {{{
augroup toml_files
	au BufNewFile,BufRead *.toml set filetype=toml
augroup END
"}}}

"Quickly Edit .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<CR>

"Refresh Page With Updated .vimrc
nnoremap <leader>sv :source $MYVIMRC<CR>

"<SPACE> Selects current word
nnoremap <SPACE> viw

"Surround word  ----------------- {{{
nnoremap <leader>" viw<ESC>a"<ESC>bi"<ESC>E
nnoremap <leader>' viw<ESC>a'<ESC>bi'<ESC>E
nnoremap <leader>( viw<ESC>a)<ESC>bi(<ESC>E
nnoremap <leader>{ viw<ESC>a}<ESC>bi{<ESC>E
nnoremap <leader>[ viw<ESC>a]<ESC>bi[<ESC>E
" }}}

"Typo Corrections --------------- {{{
iabbrev adn and
iabbrev waht what
iabbrev tehn then
" }}}

"Abbreviations
iabbrev @@ evan.helbig@willowtreeapps.com

"Handle Content i... -------------- {{{
onoremap in" :<C-u>normal! f"vi"<CR>
onoremap in' :<C-u>normal! f'vi'<CR>
onoremap in{ :<C-u>normal! f{vi{<CR>
onoremap in[ :<C-u>normal! f[vi[<CR>
onoremap in( :<C-u>normal! f(vi(<CR>
onoremap in" :<C-u>normal! F"vi"<CR>
onoremap in' :<C-u>normal! F'vi'<CR>
onoremap in} :<C-u>normal! F}vi}<CR>
onoremap in] :<C-u>normal! F]vi]<CR>
onoremap in) :<C-u>normal! F)vi)<CR>
" }}}

"Install plugins----------------------{{{
call plug#begin("~/.vim/plugged")
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'sainnhe/edge'
call plug#end()
"}}}

"Setup Coc----------------------------{{{
inoremap <silent> <expr> <c-space> coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
"}}}

"Changing color scheme
set background=dark
colorscheme edge

"Setting up coc-git----------------{{{
nnoremap [g <Plug>(coc-git-prevchunk)
nnoremap ]g <Plug>(coc-git-nextchunk)
nnoremap gs <Plug>(coc-git-chunkinfo)
"}}}

"Grep search
"nnoremap <leader>g :execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>
