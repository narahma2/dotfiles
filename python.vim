" Configuration for Python VIM IDE
" <https://realpython.com/vim-and-python-a-match-made-in-heaven/>
set nocompatible              	" required

" Powerline setup
let g:python3_host_prog = '~/anaconda3/bin/python'
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" Always display the statusline in all windows
set laststatus=2
" Always display the tabline, even if there is only one tab
set showtabline=2
" Hide the default mode text (e.g. -- INSERT -- below the statusline)
set noshowmode 

" Python syntax
let python_highlight_all=1
syntax on

" PEP 8 style
au BufNewFile,BufRead *.py
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set textwidth=79 |
	\ set expandtab |
	\ filetype plugin indent on |
	\ set fileformat=unix

" ColorColumn to ensure line length of 120 is followed
set cc=79
highlight ColorColumn ctermbg=gray

" line numbering
set nu

" set UTF-8
set encoding=utf-8

" system clipboard
set clipboard=unnamed

" // to search for visually selected text
" To replace the  search, do :%s/<C-R>//bar/gcI (global, confirm, case-sens.)
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" enable mouse support for scrolling
set mouse=a
set ttyfast

" highlight colors fix
highlight Visual ctermfg=0 ctermbg=7
highlight Folded ctermbg=0 ctermfg=yellow
highlight Search ctermbg=yellow ctermfg=black

" clear screen on exit
au VimLeave * :!clear

" add plugins (name of folders under pack/plugins/opt)
packadd! SimpylFold
packadd! YouCompleteMe
packadd! indentLine
packadd! vim-flake8
packadd! vim-fugitive
packadd! vim-signify

" scrooloose/nerdtree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$', '\.sublime$']

" tmhedberg/SimpylFold
set foldmethod=indent
set foldlevel=99
" folding with spacebar
nnoremap <space> za

" ycm-core/YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g	:YcmCompleter GoToDefinitionElseDeclaraction<CR>

" tpope/vim-fugitive; mhinz/vim-signify; jreybert/vimagit
set updatetime=100 " shorten vim update time for gitgutter signs to appear
highlight SignColumn ctermbg=NONE cterm=NONE guibg=NONE gui=NONE
highlight SignifySignAdd ctermfg=black ctermbg=green
highlight SignifySignDelete ctermfg=black ctermbg=red
highlight SignifySignChange ctermfg=black ctermbg=yellow

" yuttie/comfortable-motion.vim
nnoremap <silent> <Down> :call comfortable_motion#flick(50)<CR>
nnoremap <silent> <Up> :call comfortable_motion#flick(-50)<CR>

" yggdroot/indentline
let g:indentLine_setColors = 1
