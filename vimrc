" This is a comment in vim config files. No closing quote!

" Set tab spacing to 4-spaces and replace tab with space
set tabstop=4
set expandtab

" Set color column to 80 characters and color it grey
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Show line numbers in vim
"set number

" Set color column to 100 when looking at python or Jenkinsfiles
autocmd FileType python set colorcolumn=100
autocmd BufNewFile,BufRead Jenkinsfile set colorcolumn=100

" Set syntax to groovy for Jenkinsfiles
autocmd BufNewFile,BufRead Jenkinsfile set syntax=groovy

" Turn off terminal bell sound in vim
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
