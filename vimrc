set nocompatible

set backspace=indent,eol,start
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

"------ IDE-like Plugins ------"

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'


Plugin 'sheerun/vim-polyglot'
Plugin 'vim-python/python-syntax'
Plugin 'ekalinin/Dockerfile.vim'


" ----- Working with Git ----------------------------------------------
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

"------ Themes ------" 
Plugin 'bling/vim-airline'
Plugin 'joshdick/onedark.vim'


call vundle#end()

filetype plugin indent on
set termguicolors

set ruler
set number
set showcmd
set incsearch
set hlsearch

syntax on

" ----- Plugin-Specific Settings --------------------------------------

" Always show statusbar
set laststatus=2
" Fancy arrow symbols, requires a patched font
" To install a patched font, run over to
"     https://github.com/abertsch/Menlo-for-Powerline
" download all the .ttf files, double-click on them and click "Install"
" Finally, uncomment the next line
"let g:airline_powerline_fonts = 1
" Show PASTE if in paste mode
let g:airline_detect_paste=1
" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1
" ----- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 0


" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END



" ----- airblade/vim-gitgutter settings -----
" Required after having changed the colorscheme
hi clear SignColumn
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1


let g:python_highlight_all = 1
let g:airline_theme='onedark'

if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let g:onedark_color_overrides = {
    \ "black": {"gui": "#000000", "cterm": "0", "cterm16": "0" },
    \ "background": {"gui": "#000000", "cterm": "0", "cterm16": "0" }
    \}
  augroup END
endif

colorscheme onedark
