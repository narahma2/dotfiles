"Set F5 (wile in command/console mode!) to save script and run it in python"
map <F5> <Esc>:w<CR>:!clear;~/anaconda3/bin/python3 %<CR>

"Set F6 (while in command/console mode!) to save script and run it in python debug mode"
map <F6> <Esc>:w<CR>:!clear;~/anaconda3/bin/python3 -m pdb %<CR>

" Show line numbers
set nu
