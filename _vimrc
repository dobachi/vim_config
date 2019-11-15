if &compatible
  set nocompatible
endif

" Required:
set runtimepath+=~/vimfiles/bundles/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/vimfiles/bundles')
  call dein#begin('~/vimfiles/bundles')

  " Let dein manage dein
  " Required:
  call dein#add('~/vimfiles/bundles/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/unite.vim')
  call dein#add('https://github.com/Shougo/unite-outline.git')
  call dein#add('https://github.com/scrooloose/nerdtree.git')
  call dein#add('https://github.com/simeji/winresizer.git')
  call dein#add('https://github.com/reireias/vim-cheatsheet.git')
  call dein#add('https://github.com/Shougo/deol.nvim.git')
  call dein#add('https://github.com/kana/vim-submode.git')
  call dein#add('https://github.com/w0ng/vim-hybrid.git')
  call dein#add('https://github.com/kannokanno/previm.git')
  call dein#add('https://github.com/tyru/open-browser.vim.git')
  call dein#add('mattn/sonictemplate-vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" unite-outline
let g:unite_split_rule = 'botright'
noremap ,u :Unite -vertical -winwidth=40 -no-quit outline<CR>

" Deol
noremap ,t :Deol -split<CR>

" NERDTree
map ,ne :NERDTreeToggle<CR>
map ,nt :let NERDTreeSortOrder=['\/$', '*', '\.swp$',  '\.bak$', '\~$', '[[-timestamp]]']<CR>
map ,nn :let NERDTreeSortOrder=['\/$', '*', '\.swp$',  '\.bak$', '\~$']<CR>
let NERDTreeSortOrder=['\/$', '*', '\.swp$',  '\.bak$', '\~$', '[[-timestamp]]']


" cheatsheet
let g:cheatsheet#cheat_file = '~/.vim/cheatsheet.md'

let &guifont='ＭＳ ゴシック'

" https://qiita.com/tekkoc/items/98adcadfa4bdc8b5a6ca
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>

" call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
" call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
" call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
" call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
" call submode#map('bufmove', 'n', '', '>', '<C-w>>')
" call submode#map('bufmove', 'n', '', '<', '<C-w><')
" call submode#map('bufmove', 'n', '', '+', '<C-w>+')
" call submode#map('bufmove', 'n', '', '-', '<C-w>-')

" Color
set background=dark
colorscheme hybrid

" File Encodings
set fileencodings=ucs-bom,utf-8,iso-2022-jp,sjis,cp932,euc-jp,cp20932

" Wrap at the start and end of lines
set whichwrap=b,s,h,l,<,>,[,],~

" Template
let g:sonictemplate_vim_template_dir = ['~/.vim/template']
