
"E3""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    set nocompatible " get out of horrible vi-compatible mode
    filetype on " detect the type of file
    set history=100 " How many lines of history to remember
    set ffs=unix,mac,dos " support all three, in this order
    filetype plugin indent on " load filetype plugins
    "set completeopt=menuone,preview
    set completeopt=longest,menu
    set viminfo+=! " make sure it can save viminfo
    set isk+=_,$,@,%,# " none of these should be word dividers, so make them not be
    set nobk

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Theme/Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    set background=dark " we are using a dark background
    syntax on " syntax highlighting on
    colorscheme desert " my theme for gui
    ""colorscheme evening " my theme for terminal
    ""colorscheme asu1dark
    ""colurscheme oceandeep

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Files/Backups
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""    set nobackup " make backup file
    set makeef=error.err " When using make, where should it dump the file

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Vim UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    set number
    set wildmenu " turn on wild menu
    set ruler " Always show current positions along the bottom
    set cmdheight=1 " the command bar is 1 high
    set numberwidth=4 " minimum width to use for the number column,not a fix size
    set hid " you can change buffer without saving
    set backspace=2 " make backspace work normal
    "set whichwrap+=<,>,h,l  " backspace and cursor keys wrap to
    "set mouse=a " use mouse everywhere
    set shortmess=atI " shortens messages to avoid 'press a key' prompt
    set report=0 " tell us when anything is changed via :...
    set lz " do not redraw while running macros (much faster) (LazyRedraw)
    " make the splitters between windows be blank
    set fillchars=vert:\ ,stl:\ ,stlnc:\
    "set lsp=0 " space it out a little more (easier to read)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Visual Cues
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    set showmatch " show matching brackets
    set hlsearch " do highlight searched for phrases
    set incsearch " BUT do highlight as you type you search phrase
    set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ " what to show when I hit :set list
    set so=15 " Keep 10 lines (top/bottom) for scope
    set novisualbell " don't blink
    set noerrorbells " no noises
    set laststatus=2 " always show the status line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " File encode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    set encoding=utf-8
    set fileencoding=utf-8
    set fileencodings=ucs-bom,utf-8,chinese
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Text Formatting/Layout
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    set formatoptions+=mM " for charactors fold and patch
    set ai " autoindent
    set si " smartindent
    set cindent " do c-style indenting
    set tabstop=8 " tab spacing (settings below are just to unify it)
    set softtabstop=4 " unify
    set shiftwidth=4 " unify
    set noexpandtab " real tabs please!
    set nowrap " do not wrap lines 
    set smarttab " use tabs at the start of a line, spaces elsewhere
    ":autocmd BufEnter * call DoWordComplete()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Folding
    " Enable folding, but by default make it act like folding is off, because folding is annoying in anything but a few rare cases
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "set foldenable " Turn on folding
    set foldlevel=100 " Don't autofold anything (but I can still fold manually)
    set foldmethod=indent " use the indent/syntax on methon
    set foldopen-=search " don't open folds when you search into them
    set foldopen-=undo " don't open folds when you undo stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " taglist
    "let Tlist_Auto_Open = 1
    let Tlist_Use_Right_Window=1
    "let Tlist_File_Fold_Auto_Close=1
    let Tlist_Exit_OnlyWindow=1
    let Tlist_Show_One_File=1
    nmap tt :Tlist<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "tags
    if getfsize("vimscript")>0
        source vimscript
    endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "WinManager
    let g:winManagerWindowLayout='FileExplorer|TagList'
    nmap wm :WMToggle<cr>

    "minbufExplorer
    let g:miniBufExplMapCTabSwitchBufs = 1
    let g:miniBufExplMapWindowNavVim = 1 "则可以用<C-h,j,k,l>切换到上下左右的窗口中去
    let g:miniBufExplMapWindowNavArrows = 1
    "let g:miniBufExplModSelTarget = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "omnicpp
    let OmniCpp_GlobalScopeSearch = 1  " 0 or 1
    let OmniCpp_NamespaceSearch = 1   " 0 ,  1 or 2
    let OmniCpp_DisplayMode = 1
    let OmniCpp_ShowScopeInAbbr = 0
    let OmniCpp_ShowPrototypeInAbbr = 1
    let OmniCpp_ShowAccess = 1
    let OmniCpp_MayCompleteDot = 1
    let OmniCpp_MayCompleteArrow = 1
    let OmniCpp_MayCompleteScope = 1   
   
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=1
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
	cs add cscope.out
    endif
    set csverb
endif

nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>
