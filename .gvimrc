"codeams@gmail.com
"Vim configuration

set guifont=Operator_Mono_Lig_Book:h15

"Disable GUI tabs in favor of native ones.
set guioptions-=e

set termguicolors

set macligatures

set linespace=10

"Disable Gui scrollbars.
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

"Configure regular cursor
  "Make the cursor a 5% horizontal bar
  "Wait 500 after moving the cursor before blinking
  "Let the cursor be on for 1000ms
  "And then off by 400ms seconds before going on again
set guicursor=n-v-c:hor5-Cursor/lCursor-blinkwait500-blinkon1000-blinkoff400

"Configure insert mode cursor:
  "Make the cursor a 20% width vertical bar
  "Wait 500 after moving the cursor before blinking
  "Let the cursor be on for 1000ms
  "And then off by 0ms seconds before going on again
set guicursor+=i:ver20-Cursor/lCursor-blinkwait500-blinkon1000-blinkoff0

"Load machine-specific configuration
if filereadable(expand("~/.gvimrc.local"))
  source ~/.gvimrc.local
endif

