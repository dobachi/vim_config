if &compatible
  set nocompatible
endif

" Dein
let $CACHE = expand('~/.cache')
if !isdirectory($CACHE)
  call mkdir($CACHE, 'p')
endif
if &runtimepath !~# '/dein.vim'
  let s:dein_dir = fnamemodify('dein.vim', ':p')
  if !isdirectory(s:dein_dir)
    let s:dein_dir = $CACHE . '/dein/repos/github.com/Shougo/dein.vim'
    if !isdirectory(s:dein_dir)
      execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
    endif
  endif
  execute 'set runtimepath^=' . substitute(
        \ fnamemodify(s:dein_dir, ':p') , '[/\\]$', '', '')
endif

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

" dein
let g:dein#auto_recache = 1

" vim-markdown
let g:vim_markdown_folding_disabled = 1

" modeline
set modeline

" mg-img-paste
let g:mdip_imgdir = 'img'
let g:mdip_imgname = 'image'
nmap <silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>

" Markdown Preview
nnoremap mp :MarkdownPreview<CR>
nnoremap ms :MarkdownPreviewStop<CR>

" flexible delete
set backspace=indent,eol,start
