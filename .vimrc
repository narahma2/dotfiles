"Set F5 (wile in command/console mode!) to save script and run it in python"
map <F5> <Esc>:w<CR>:!clear;~/anaconda3/bin/python3 %<CR>

"Set F6 (while in command/console mode!) to save script and run it in python debug mode"
map <F6> <Esc>:w<CR>:!clear;~/anaconda3/bin/python3 -m pdb %<CR>

" Show line numbers
set nu

" System clipboard
set clipboard=unnamed

" // to search for visually selected text
" To replace the  search, do :%s/<C-R>//bar/gcI (global, confirm, case-sens.)
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" Enable mouse support for scrolling
set mouse=a
set ttyfast

" scrooloose/nerdtree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$', '\.sublime$']

" yuttie/comfortable-motion.vim
nnoremap <silent> <Down> :call comfortable_motion#flick(50)<CR>
nnoremap <silent> <Up> :call comfortable_motion#flick(-50)<CR>
