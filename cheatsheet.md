# vim cheetsheet

## Standard functions

### buffer

:ls : list buffers

:b [tab] : chose the buffer

"[a-z]yy : カーソル行を名前付きバッファにヤンク(コピー)

"[a-z]dd : カーソル行を名前付きバッファにカット

"[a-z]p  : カーソル業に名前付きバッファからペースト

### Window functions

sj : go to down

sk : go to up

sl : go to right

sh : go to left

sJ : move this to down

sK : move this to up

sL : move this to right

sH : move this to left

sP : open previous buffer

sN : open next buffer

## scrooloose/nerdtree

`,n` : Open nerdtree

## simeji/winresizer

https://github.com/simeji/winresizer#customize-options

`<C-e>` : Change window size

### functions

" o: open in prev window

" t: open in new tab

## unite-outline

`,u` : Open outline

## Deol (Terminal)

`,u` : Open a terminal with splited window

`:Deol`; Start a terminal in the current window

`<C-w> N`: Text mode

`i`: Enter normal terminal mode

reference: https://techracho.bpsinc.jp/tsunekawa/2018_09_11/61576
