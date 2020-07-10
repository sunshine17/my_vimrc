filetype off                  " required
" ============ Vundle CONFIG ============
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Install jsctags
" npm install -g git+https://github.com/ramitos/jsctags.git

Plugin 'dense-analysis/ale'

Plugin 'ternjs/tern_for_vim'
Plugin 'isRuslan/vim-es6'

" Use jsctags instead of ctags to generate tags for javascript files
let g:tagbar_type_javascript = {
  \ 'ctagsbin' : 'jsctags'
\ }

" Plugin for vue
Plugin 'posva/vim-vue'


" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

Plugin 'HerringtonDarkholme/yats.vim'

Plugin 'leafgarland/typescript-vim'

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
Plugin 'leafgarland/typescript-vim'
Plugin 'posva/vim-vue'

" status bar beautify
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()            " required
filetype plugin indent on    " required


