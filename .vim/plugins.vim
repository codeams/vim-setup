filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Editor features
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'
Plugin 'msanders/snipmate.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'jamessan/vim-gnupg'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'gcmt/taboo.vim'
Plugin 'jszakmeister/vim-togglecursor'

"Syntax
Plugin 'tpope/vim-liquid'
Plugin 'posva/vim-vue'
Plugin 'mxw/vim-jsx'
Plugin 'leafgarland/typescript-vim'
Plugin 'ianks/vim-tsx'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'jwalton512/vim-blade'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
