" vundle configuration
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims=2 " Add spaces after comment delimiters by default
let mapleader="."

Plugin 'vim-airline/vim-airline'
set laststatus=2

Plugin 'majutsushi/tagbar'
nmap tt :TagbarToggle<CR>
let g:tagbar_width=40
let g:tagbar_autofocus=1 " let cursor auto in tag-window when it is opened

Plugin 'lervag/vimtex'
set complete=.

" Plugin 'vim-latex/vim-latex'
" let g:tex_flavor = 'latex'
" let g:Tex_FoldedSections=""
" let g:Tex_FoldedEnvironments=""
" let g:Tex_FoldedMisc=""
" let g:Tex_TreatMacViewerAsUNIX=1 " forward searching

" let g:Tex_DefaultTargetFormat='pdf'
" let g:Tex_CompileRule_pdf='mkdir -p build && pdflatex -output-directory=build -interaction=nonstopmode $* && cp *.bib build && cd build && bibtex %:r && cd .. && pdflatex -output-directory=build -interaction=nonstopmode $* && mv build/$*.pdf . && open $*.pdf'
" let g:Tex_CompileRule_pdf='mkdir -p build && pdflatex -output-directory=build -interaction=nonstopmode $* && cp *.bib build && cd build && bibtex %:r && cd .. && pdflatex -output-directory=build -interaction=nonstopmode $* && mv build/$*.pdf . && /usr/usr/bin/qlmanage -pp $*.pdf'

Plugin 'fholgado/minibufexpl.vim'
let g:minBufExplMapCTabSwitchBufs=1

Plugin 'godlygeek/tabular'

Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_math=1

Plugin 'flazz/vim-colorschemes'

Plugin 'ervandew/supertab'
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-N>"

Plugin 'Chiel92/vim-autoformat'

Plugin 'luochen1990/rainbow'
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
" filetype plugin on

" can be called correctly.
set shellslash

" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" filetype indent on

let g:tex_flavor='xelatex'

syntax enable
syntax on

colorscheme Benokai
" let g:quantum_italics=1
" let g:quantum_black=1

if has("termguicolors")
    set termguicolors
endif

set tabstop=2
set softtabstop=2
set shiftwidth=4
set nu  "row number
set history=1000 
set expandtab  "expand tab as blank space depending on shiftwidth
set cursorline  "highlight current line
set cursorcolumn  "highlight current column
set hlsearch
set incsearch  "display results when you are inputting
set noerrorbells  "close error bells
set visualbell  "set error alert as visual instead of beep
set cindent
"set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
"set autoindent
"set smartindent "improvement based on autoindent 
"set ruler
set showmatch
set nobackup
set noswapfile "forbid backup
set completeopt=preview,menu

autocmd FileType python setlocal et sta sw=4 sts=4
autocmd FileType make setlocal noexpandtab  "makefile does not allow to interprate tab as blank space.

set filetype=python
au BufNewFile,BufRead *.py,*.pyw setf python

" map jk to 
" imap jk <Esc>
set backspace=indent,eol,start
" no highlight search
set nohlsearch
