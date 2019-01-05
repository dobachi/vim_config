
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
noremap ,u :Unite -vertical -winwidth=40 outline<CR>

" NERDTree
map ,n :NERDTreeToggle<CR>

" cheatsheet
let g:cheatsheet#cheat_file = '~/.vim/cheatsheet.md'
