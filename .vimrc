"codeams@gmail.com
"Vim configuration


"""""""""""""""""""""""""""""
" Setup
"""""""""""""""""""""""""""""

"Load plugins file.
so ~/.vim/plugins.vim

"Change leader to something closer to my fingers :smirk:.
let mapleader = ','

"""""""""""""""""""""""""""""
" Vim behavior
" Configurations regarding the way vim should work.
"""""""""""""""""""""""""""""

"Disable editor bells.
set noerrorbells visualbell t_vb=

"Use every setting even if it's not comatible with Vi.
set nocompatible

"Drastically reduce update time in order to allow
  "git gutter to catch changes faster.
set updatetime=100

"Dont' create a swap file
set noswapfile


"""""""""""""""""""""""""""""
" Editor
" Configurations regarding the editor behavior
"""""""""""""""""""""""""""""

"Show match in parens, etc.
set showmatch

"Disable line numbers.
set nonumber

"Disable line wrapping.
set nowrap

"Enable syntax highlight.
syntax enable

"Make backspace behave like every other editor.
set backspace=indent,eol,start

"Change spell language
"set spell spelllang=en_us

"Change completing configuration:
  "Include current file, windows and opened and loaded buffers.
set complete=.,w,b,u

"Tabs and indentation configuration.
"TODO: Add editor config plugin
set softtabstop=2
set tabstop=2 shiftwidth=2 expandtab
set list
set listchars=tab:->,trail:·


"""""""""""""""""""""""""""""
" Visuals
" Configurations for making the editor look great.
"""""""""""""""""""""""""""""

"Use the most beautiful palette ever made.
colorscheme palenight

"Let's place this here too
"since I'll be using iterm2
"set termguicolors

"Fake a custom left padding for each window.
hi LineNr guibg=bg
set foldcolumn=2
hi foldcolumn guibg=bg

"Get rid of split borders.
hi vertsplit guifg=bg guibg=bg

"Remove the status bar.
set laststatus=2


"""""""""""""""""""""""""""""
" Search
"""""""""""""""""""""""""""""

"Highlight all matched terms.
set hlsearch

"Incrementally highlight, as we type.
set incsearch


"""""""""""""""""""""""""""""
" Split Management
"""""""""""""""""""""""""""""

"Make splits default to below and the right
set splitbelow
set splitright

"No need to press W
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

"More natural mapping to split the editor
noremap <leader>s :vsp<cr>
noremap <leader>o :tab sp<cr>
noremap <leader>t :tabe<cr>



"""""""""""""""""""""""""""""
" General Mappings
"""""""""""""""""""""""""""""

"Open .vimrc in new tab
nmap <Leader>ev :tabedit ~/Developer/vim-setup/.vimrc<cr>
nmap <Leader>eg :tabedit ~/Developer/vim-setup/.gvimrc<cr>
nmap <Leader>ep :tabedit ~/Developer/vim-setup/.vim/plugins.vim<cr>
nmap <Leader>es :e ~/.vim/snippets/

"Remove hlseearch
nmap <Leader><space> :nohlsearch<cr>

"Quickly browse to any tag/symbol in the project.
"Tip: run ctags -R to regenerated the index.
nmap <Leader>f :tag<space>


"""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""

"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'vendor\|node_modules\|DS_Store\|git\|dist\|build\|__generated__'
let g:ag_prg='ag --ignore "./dist/*"'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10,results:30'

nmap <C-p> :CtrlP<cr>
nmap <C-r> :CtrlPBufTag<cr>
nmap <C-e> :CtrlPMRUFiles<cr>
nmap <C-t> <Plug>PeepOpen

"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0

"Make NERDTree easier to toggle.
nmap <leader>r :NERDTreeFind<cr>
nmap <leader>b :NERDTreeToggle<cr>

"/
"/ Greplace.vim
"/
let g:grep_cmd_opts = '--line-numbers --noheading'

"Use Ag for the search.
set grepprg=ag

"/
"/ GitGutter
"/
noremap  <Leader>g :GitGutterToggle<CR>


"""""""""""""""""""""""""""""
" Laravel specific
"""""""""""""""""""""""""""""
nmap <Leader>lr :e app/Http/routes.php<cr>
nmap <Leader>lm :!php artisan make:
nmap <Leader><Leader>c :e app/Http/Controllers/<cr>
nmap <Leader><Leader>m :CtrlP<cr>app/
nmap <Leader><Leader>v :e resources/views/<cr>


"""""""""""""""""""""""""""""
" Auto commands
"""""""""""""""""""""""""""""

"Automatically source the Vimrc file on save.
augroup autosourcing
  autocmd!
  autocmd BufWritePost .vimrc source %
augroup END

"Load machine-specific configuration
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

