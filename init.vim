" theme
colorscheme spacecamp

" tabs
nmap <C-t> :tabnew<CR>
imap <C-t> <Esc>:tabnew<CR>
nmap <C-w> :tabclose<CR>
imap <C-w> <Esc>:tabclose<CR>

" swith between tabs
map <S-TAB> :tabprevious<CR>
nmap <S-TAB> :tabprevious<CR>
imap <S-TAB> <Esc>:tabprevious<CR>i

" enable line numbers
set number

" break lines on whitespace
set linebreak

" highlight current line
set cursorline

" status bar
set laststatus=2
set statusline=%1*\ %f%m%r%h%w\%=%([%{&ff}\|%{(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\")}%k\|%Y]%)\ %([%l,%v][%p%%]\ %)

" less blinking
set lazyredraw

" show matches on command-line completion
set wildmenu

" enable syntax highlighting
if !exists("syntax_on")
    syntax on
endif

" use incremental search
set incsearch

" encoding
set enc=utf-8
set fileformat=unix

" enable search results highlight (if search register isn't empty)
if @/ == ''
    set hlsearch
endif

" go to the next/previous incremental search match
cnoremap <expr> <tab>
       \ feedkeys(index(['/', '?'], getcmdtype()) >= 0 ? "<c-g>" : "<tab>",
       \          'tn') ? '' : ''
cnoremap <expr> <s-tab>
       \ feedkeys(index(['/', '?'], getcmdtype()) >= 0 ? "<c-t>" : "<s-tab>",
       \          'tn') ? '' : ''
