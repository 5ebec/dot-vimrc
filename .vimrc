
"        _                     "
" __   _(_)_ __ ___  _ __ ___  "
" \ \ / / | '_ ` _ \| '__/ __| "
"  \ V /| | | | | | | | | (__  "
" (_)_/ |_|_| |_| |_|_|  \___| "
"                              "

"color
syntax enable
colorscheme darkblue
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none

"essential
if &compatible
  set nocompatible
endif
set list
set ruler
set number
set hidden
set incsearch
set showmatch
set smartcase
set expandtab
set tabstop=2
set nowrapscan
set ignorecase
set autoindent
set matchtime=1
set history=1000
set shiftwidth=2
set pumheight=10
set encoding=utf-8
scriptencoding utf-8
set display=lastline
set nrformats=alpha,octal,hex,bin
set fileencodings=utf-8,ios-2022-jp,euc-jp,sjis,cp932
set listchars=tab:»-,trail:·,extends:»,precedes:«,nbsp:%

"like spacemacs
let g:mapleader = "\<Space>"
nnoremap <Space> <Nop>
nnoremap <leader>fed :<C-u>e ~/.vimrc<CR>
nnoremap <leader>feR :<C-u>w<CR>:so ~/.vimrc<CR>

"number
nnoremap <leader>nn :<C-u>set nu!<CR>
nnoremap <leader>nr :<C-u>set rnu!<CR>

"tab
nnoremap <leader>tt :<C-u>tabe<CR>
nnoremap <leader>th gT
nnoremap <leader>tl gt

"window
nnoremap <leader>w- <C-w>s
nnoremap <leader>w/ <C-w>v
nnoremap <leader>ww <C-w>w
nnoremap <leader>w= <C-w>=
nnoremap <leader>wj <C-w>-
nnoremap <leader>wk <C-w>+
nnoremap <leader>wh <C-w><
nnoremap <leader>wl <C-w>>
nnoremap <leader>wd <C-w>c

"buffer
nnoremap <leader>b :<C-u>b 
nnoremap <leader>bb :<C-u>ls<CR>
nnoremap <leader>bp :<C-u>bp<CR>
nnoremap <leader>bn :<C-u>bn<CR>
nnoremap <leader>bd :<C-u>bd<CR>

"file explorer
nnoremap <leader>ff :<C-u>E<CR>
nnoremap <leader>f- :<C-u>Se<CR>
nnoremap <leader>f/ :<C-u>Ve<CR>

"replace
nnoremap <leader>s :<C-u>%s///g<Left><Left><Left>
vnoremap <leader>s :s///g<Left><Left><Left>

"cursor
noremap k gk
noremap j gj
noremap gk k
noremap gj j
noremap H ^
noremap L $
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>
cnoremap <C-a> <C-b>
cnoremap <C-u> <C-e><C-u>

"bracket autocompletion
inoremap { {}<ESC>i
inoremap {} {}
inoremap {<Enter> {}<Left><CR><ESC><S-o><Tab>
inoremap ( ()<ESC>i
inoremap () ()
inoremap (<Enter> ()<Left><CR><ESC><S-o><Tab>

"other
nnoremap Y y$
nnoremap > >>
nnoremap < <<
nnoremap x "_x
nnoremap s "_s
inoremap <C-]> <ESC><Right>

"fileType
augroup fileType
  autocmd!
  "Whitespace
  autocmd BufNewFile,BufRead *.ws setlocal noautoindent noexpandtab tabstop=1 listchars=tab:–~,trail:·,eol:¬,extends:»,precedes:«,nbsp:%
augroup END
