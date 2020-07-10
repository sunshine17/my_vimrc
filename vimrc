" Modeline and Notes 
"
"   This is my personal .vimrc, I don't recommend you copy it, just
"   use the "   pieces you want(and understand!).  When you copy a
"   .vimrc in its entirety, weird and unexpected things can happen.
"
"   If you find an obvious mistake hit me up at:
"   http://robertmelton.com/contact (many forms of communication)
" 

"let Tlist_Ctags_Cmd = '/Users/Linzy/local/ctags-5.8/bin/ctags'
"let Tlist_Ctags_Cmd = '/usr/bin/ctags'
" For pathogen.vim: auto load all plugins in .vim/bundle
"
"call pathogen#infect()
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()

set nocompatible              " be iMproved, required
filetype off                  " required


" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
    
source ~/.vim/vundle.vim

set t_Co=256
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='light'

au! Syntax markdown source $HOME/.vim/bundle/vim-markdown/syntax/markdown.vim
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.markdown set filetype=markdown

" Basics 
"    set nocompatible " explicitly get out of vi-compatible mode
    set noexrc " don't use local version of .(g)vimrc, .exrc
    set enc=utf-8
"    set langmenu=none
"    set langmenu=zh_CN.UTF-8
"    language message zh_CN.UTF-8
"    set langmenu=utf-8
"    language message utf-8

    set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
    set fileencoding=utf-8


"    set background=dark " we plan to use a dark background
    color desert
    set cpoptions=aABceFsmq
    "             |||||||||
    "             ||||||||+-- When joining lines, leave the cursor
    "             |||||||      between joined lines
    "             |||||||+-- When a new match is created (showmatch)
    "             ||||||      pause for .5
    "             ||||||+-- Set buffer options when entering the
    "             |||||      buffer
    "             |||||+-- :write command updates current file name
    "             ||||+-- Automatically add <CR> to the last line
    "             |||      when using :@r
    "             |||+-- Searching continues at the end of the match
    "             ||      at the cursor position
    "             ||+-- A backslash has no special meaning in mappings
    "             |+-- :write updates alternative file name
    "             +-- :read updates alternative file name
    syntax on " syntax highlighting on
" 

" General 
    filetype plugin indent on " load filetype plugins/indent settings
    set autochdir " always switch to the current file directory
    set backspace=indent,eol,start " make backspace a more flexible
    set nobackup " make backup files
    set backupdir=~/var/vim/backup " where to put backup files
    set clipboard+=unnamed " share windows clipboard
    set directory=~/var/vim/tmp " directory to place swap files in
    set fileformats=unix,dos,mac " support all three, in this order
    set hidden " you can change buffers without saving
    " (XXX: #VIM/tpope warns the line below could break things)
    set iskeyword+=_,$,@,%,# " none of these are word dividers
    set mouse=a " use mouse everywhere
    set noerrorbells " don't make noise
    set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
    "             | | | | | | | | |
    "             | | | | | | | | +-- "]" Insert and Replace
    "             | | | | | | | +-- "[" Insert and Replace
    "             | | | | | | +-- "~" Normal
    "             | | | | | +-- <Right> Normal and Visual
    "             | | | | +-- <Left> Normal and Visual
    "             | | | +-- "l" Normal and Visual (not recommended)
    "             | | +-- "h" Normal and Visual (not recommended)
    "             | +-- <Space> Normal and Visual
    "             +-- <BS> Normal and Visual
    set wildmenu " turn on command line completion wild style
    " ignore these list file extensions
    set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,
                    \*.jpg,*.gif,*.png
    set wildmode=list:longest " turn on wild mode huge list
" 

" Vim UI 
"    set cursorcolumn " highlight the current column
"    set cursorline " highlight current line
    set incsearch " BUT do highlight as you type you
                   " search phrase
    set laststatus=2 " always show the status line
    set lazyredraw " do not redraw while running macros
    set linespace=0 " don't insert any extra pixel lines
                     " betweens rows
"    set list " we do what to show tabs, to ensure we get them
              " out of my files
"    set listchars=tab:>-,trail:- " show tabs and trailing
    set matchtime=5 " how many tenths of a second to blink
                     " matching brackets for
"    set nohlsearch " do not highlight searched for phrases
    set hlsearch " do highlight searched for phrases
    set nostartofline " leave my cursor where it was
    set novisualbell " don't blink
    set number " turn on line numbers
    set numberwidth=5 " We are good up to 99999 lines
    set report=0 " tell us when anything is changed via :...
    set ruler " Always show current positions along the bottom
    set scrolloff=10 " Keep 10 lines (top/bottom) for scope
    set shortmess=aOstT " shortens messages to avoid
                         " 'press a key' prompt
    set showcmd " show the command being typed
    set showmatch " show matching brackets
    set sidescrolloff=10 " Keep 5 lines at the size
    set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
    "              | | | | |  |   |      |  |     |    |
    "              | | | | |  |   |      |  |     |    + current
    "              | | | | |  |   |      |  |     |       column
    "              | | | | |  |   |      |  |     +-- current line
    "              | | | | |  |   |      |  +-- current % into file
    "              | | | | |  |   |      +-- current syntax in
    "              | | | | |  |   |          square brackets
    "              | | | | |  |   +-- current fileformat
    "              | | | | |  +-- number of lines
    "              | | | | +-- preview flag in square brackets
    "              | | | +-- help flag in square brackets
    "              | | +-- readonly flag in square brackets
    "              | +-- rodified flag in square brackets
    "              +-- full path to file in the buffer
" 

" Text Formatting/Layout 
    set completeopt= " don't use a pop up menu for completions
    set expandtab " no real tabs please!
    set formatoptions=rq " Automatically insert comment leader on return,
                          " and let gq format comments
    set ignorecase " case insensitive by default
    set infercase " case inferred by default
"    set nowrap " do not wrap line
    set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
    set smartcase " if there are caps, go case-sensitive
    set shiftwidth=4 " auto-indent amount when using cindent,
                      " >>, << and stuff like that
    set softtabstop=4 " when hitting tab or backspace, how many spaces
                       "should a tab be (see expandtab)
    set tabstop=4 " real tabs should be 8, and they will show with
                   " set list on
" 

" Folding 
    set foldenable " Turn on folding
"    set foldmarker=i{,} " Fold C style code (only use this as default
                        " if you use a high foldlevel)
"    set foldmethod=marker " Fold on the marker
    set foldlevel=100 " Don't autofold anything (but I can still
                      " fold manually)
    set foldopen=block,hor,mark,percent,quickfix,tag " what movements
                                                      " open folds
"    function SimpleFoldText() " 
"        return getline(v:foldstart).' '
"    endfunction " 

    set foldtext=SimpleFoldText() " Custom fold text function
                                   " (cleaner than default)
" 

" Plugin Settings 
    let b:match_ignorecase = 1 " case is stupid
    let perl_extended_vars=1 " highlight advanced perl vars
                              " inside strings

    " TagList Settings 
        let Tlist_Auto_Open=0 " let the tag list open automagically
        let Tlist_Compact_Format = 1 " show small menu
        let Tlist_Ctags_Cmd = 'ctags' " location of ctags
        let Tlist_Enable_Fold_Column = 0 " do show folding tree
        let Tlist_Exist_OnlyWindow = 1 " if you are the last, kill
                                        " yourself
        let Tlist_File_Fold_Auto_Close = 1 " fold closed other trees
        let Tlist_Sort_Type = "name" " order by
        let Tlist_Use_Right_Window = 1 " split to the right side
                                        " of the screen
        let Tlist_WinWidth = 40 " 40 cols wide, so i can (almost always)
                                 " read my functions
        " Language Specifics 
            " just functions and classes please
            let tlist_aspjscript_settings = 'asp;f:function;c:class' 
            " just functions and subs please
            let tlist_aspvbs_settings = 'asp;f:function;s:sub' 
            " don't show variables in freaking php
            let tlist_php_settings = 'php;c:class;d:constant;f:function' 
            " just functions and classes please
            let tlist_vb_settings = 'asp;f:function;c:class' 
        " 
    " 
" 

" Mappings 
    " ROT13 - fun
    map <F12> ggVGg?

    " space / shift-space scroll in normal mode
"    noremap <S-space> <C-b>
"    noremap <space> <C-f>

    " Make Arrow Keys Useful Again 
    "
        map <down> <ESC>:bn<RETURN>
        map <up> <ESC>:bp<RETURN>
        map <left> <ESC>:NERDTreeToggle<RETURN>
"        map <right> <ESC>:Tlist<RETURN>
"
"        map <left> <ESC>:NERDTreeToggle <CR><CR>
"        map <right> <ESC>:Tlist<CR><CR>
"
"        map <F2> :NERDTreeToggle<RETURN>
"        map <F3> :Tlist<RETURN>
        map <F4> t :NERDTreeMirror<CR><RETURN>
    " 
" 

" Autocommands 
    " Ruby 
        " ruby standard 2 spaces, always
        au BufRead,BufNewFile *.rb,*.rhtml set shiftwidth=2 
        au BufRead,BufNewFile *.rb,*.rhtml set softtabstop=2 
    " 
    " Notes 
        " I consider .notes files special, and handle them differently, I
        " should probably put this in another file
        au BufRead,BufNewFile *.notes set foldlevel=2
        au BufRead,BufNewFile *.notes set foldmethod=indent
        au BufRead,BufNewFile *.notes set foldtext=foldtext()
        au BufRead,BufNewFile *.notes set listchars=tab:\ \
        au BufRead,BufNewFile *.notes set noexpandtab
        au BufRead,BufNewFile *.notes set shiftwidth=8
        au BufRead,BufNewFile *.notes set softtabstop=8
        au BufRead,BufNewFile *.notes set tabstop=8
        au BufRead,BufNewFile *.notes set syntax=notes
        au BufRead,BufNewFile *.notes set nocursorcolumn
        au BufRead,BufNewFile *.notes set nocursorline
        au BufRead,BufNewFile *.notes set guifont=Consolas:h12
        au BufRead,BufNewFile *.notes set spell
    " 
    au BufNewFile,BufRead *.ahk setf ahk 
" 

" GUI Settings 
if has("gui_running")
    " Basics 
        colorscheme metacosm " my color scheme (only works in GUI)
        set columns=180 " perfect size for me
        set guifont=Consolas:h10 " My favorite font
        set guioptions=ce 
        "              ||
        "              |+-- use simple dialogs rather than pop-ups
        "              +  use GUI tabs, not console style tabs
        set lines=55 " perfect size for me
        set mousehide " hide the mouse cursor when typing
    " 

    " Font Switching Binds 
"        map <F8> <ESC>:set guifont=Consolas:h8<CR>
"        map <right> <ESC>:set guifont=Consolas:h8<CR><CR>
"        map <right> <ESC>:Tlist<CR><CR>

        map <F9> <ESC>:set guifont=Consolas:h10<CR>
        map <F10> <ESC>:set guifont=Consolas:h12<CR>
        map <F11> <ESC>:set guifont=Consolas:h16<CR>
        map <F12> <ESC>:set guifont=Consolas:h20<CR>
    " 
endif
" 

" tabline hi
"hi TabLine guifg=none cterm=none
hi TabLineSel guibg=blue ctermbg=blue
hi TabLineFill ctermfg=black

nmap sw :w !sudo tee %

let g:ConqueTerm_ReadUnfocused=1
let g:ConqueTerm_CWInsert=0
let g:ConqueTerm_TERM='xterm'

nmap <leader>p :set paste!<BAR>set paste?<CR>

" tagbar map
"nmap <F8> :TagbarToggle<CR>
nmap <right> :TagbarToggle<CR>
"let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width = 30

"autocmd! bufwritepost .vimrc source ~/.vimrc
"set runtimepath^=~/.vim/bundle/ctrlp.vim

set tags=./.tags,.tags;
set copyindent
set smarttab

au FileType php set omnifunc=phpcomplete#CompletePHP
"set omnifunc=syntaxcomplete#Complete

" You might also find this useful
" " PHP Generated Code Highlights (HTML & SQL)                                              
"
let php_sql_query=1                                                                                        
let php_htmlInStrings=1


"if has('cscope')
"  set cscopetag cscopeverbose
"
"  if has('quickfix')
"    set cscopequickfix=s-,c-,d-,i-,t-,e-
"  endif
"
"  cnoreabbrev csa cs add
"  cnoreabbrev csf cs find
"  cnoreabbrev csk cs kill
"  cnoreabbrev csr cs reset
"  cnoreabbrev css cs show
"  cnoreabbrev csh cs help
"
"  command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
"endif

" check php parsing error with 'CTRL + J'
map <C-J> :!php -l % <CR>

"nnoremap K :Man --manpath=/usr/local/php/lib/php/doc/pman/ <cword> 1<cr>
"nnoremap K :pman --manpath=/usr/local/php/lib/php/doc/pman/  <cword><cr>
"nnoremap K :pman   <cword><cr>


" ======= Leaderf CONFIG =======
"
" search word under cursor, the pattern is treated as regex, and enter normal mode directly
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>

" search word under cursor, the pattern is treated as regex,
" append the result to previous search results.
noremap <C-G> :<C-U><C-R>=printf("Leaderf! rg --append -e %s ", expand("<cword>"))<CR>

" search word under cursor literally only in current buffer
noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg -F --current-buffer -e %s ", expand("<cword>"))<CR>

" search visually selected text literally, don't quit LeaderF after accepting an entry
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F --stayOpen -e %s ", leaderf#Rg#visual())<CR>

" recall last search. If the result window is closed, reopen it.
noremap go :<C-U>Leaderf! rg --stayOpen --recall<CR>


"let g:Lf_ShortcutF = '<leader>ff'
"let g:Lf_ShortcutB = '<leader>fb'

nnoremap <leader>fm :LeaderfMru<cr>
nnoremap <leader>fc :LeaderfFunction<cr>
nnoremap <leader>ft :LeaderfTag<cr>


let g:Lf_WorkingDirectoryMode = 'Ac'

" ======= END of Leaderf CONFIG =======
"

map <Space> <Leader>
"let mapleader=" "
"


let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1


"Enables code folding for javascript based on our syntax file.
"Please note this can have a dramatic effect on performance.

augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

"let snippets_dir = '~/var/vim/snippets/'
