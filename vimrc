" Make external commands work through a pipe instead of a pseudo-tty
"set noguipty

" You can also specify a different font, overriding the default font
"if has('gui_gtk2')
"  set guifont=Bitstream\ Vera\ Sans\ Mono\ 12
"else
"  set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1
"endif

" If you want to run gvim with a dark background, try using a different
" colorscheme or running 'gvim -reverse'.
" http://www.cs.cmu.edu/~maverick/VimColorSchemeTest/ has examples and
" downloads for the colorschemes on vim.org

" Source a global configuration file if available

set nu
set tags=tags
syntax on
set nobackup
set noswapfile
set showmatch
set incsearch
set hlsearch
set ignorecase
set expandtab
set ts=4
"set guifont=Liberation Sans\ 15
set guifont=Monospace\ 15
set foldmethod=indent
set backspace=2
set clipboard+=unnamed
set lines=25 columns=118
"colorscheme molokai
"set background=light
"colorscheme default
"colorscheme solarized
"colorscheme evening
colorscheme desert

filetype on
filetype plugin indent on

let g:Tlist_Ctags_Cmd='/usr/bin/ctags'

if has("cscope")
  "set csprg=/users/yubmao/cscope
  set cscopetag
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  set csverb
endif


" taglist config
map <F2> :TlistToggle<CR>
let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Show_One_File = 1
let Tlist_WinWidth = 25
let Tlist_Exit_OnlyWindow = 1

" tagbar config
nmap <silent> <F9> :TagbarToggle<CR>
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width = 20
let g:tagbar_sort = 0

" NerdTree use <F3> 
let NERDTreeWinPos='left'  
let NERDTreeWinSize=20  
let NERDTreeChDirMode=1 
let NERDChrismasTree=1
let NERDTreeDirArrows=0
map <F3> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif 
"map <F2> :VSTreeExploreToggle<CR>
"let treeExplHidePattern='\.[d|o]$'
"let treeExplVertical=1
"let treeExplWinSize=40
"let treeExplNoList=1
"let treeExplWinPos='right'

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-c> "+y
nmap <C-v> "+gP
nmap <C-x> "+x


if filereadable("/etc/vim/gvimrc.local")
  source /etc/vim/gvimrc.local
endif
