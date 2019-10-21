filetype off                  " required
" ============ Vundle CONFIG ============
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

Plugin 'HerringtonDarkholme/yats.vim'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Yggdroot/LeaderF'
Plugin 'Valloric/YouCompleteMe'

Plugin 'godlygeek/tabular'

" Markdown / Writting
Plugin 'reedes/vim-pencil'
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'LanguageTool'


" PHP Support
Plugin 'phpvim/phpcd.vim'
Plugin 'tobyS/pdv'

" JS Support
Plugin 'heavenshell/vim-jsdoc.git'

" status bar beautify
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()            " required
filetype plugin indent on    " required



call vundle#begin()
"call vundle#begin('~/.vim/vundle_pkgs')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

