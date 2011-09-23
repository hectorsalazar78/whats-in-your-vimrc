set nocompatible
set backspace=indent,eol,start
set incsearch
set ruler
set history=50
set mouse=a
set number
set nohlsearch
set expandtab
set shiftwidth=4
set softtabstop=4
set laststatus=2
colorscheme wombat256
syntax on

filetype indent on
filetype plugin on
set omnifunc=syntaxcomplete#Complete
let NERDTreeIgnore=['\.pyc$', '\~$', 'lib', 'lib64', 'bin', 'include']

autocmd BufEnter * setlocal cursorline
hi cursorline   ctermbg=17 cterm=NONE

noremap gl <C-^>
noremap <F12> :<C-U>NERDTreeToggle<CR>

if has('gui_running')
    set guifont=Terminus\ 10
    set guioptions-=T " Remove toolbar
    set guioptions-=r " Remove right side scrollbar
    set guioptions-=L " Remove left side scrollbar
else
    highlight WideStatusLine ctermbg=1
    highlight NormalStatusLine ctermbg=237
    function StatusLine()
        if &columns > 223
            let l:stl = '%#WideStatusLine#'
        else
            let l:stl = '%#NormalStatusLine#'
        endif
        return l:stl . '%<%f %h%r%=%-14.(%l,%c%V%) %P'
    endfunction

set stl=%!StatusLine()
endif

