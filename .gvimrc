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

"Load machine-specific configuration
if filereadable(expand("~/.gvimrc.local"))
  source ~/.gvimrc.local
endif

