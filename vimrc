" This is a comment in vim config files. No closing quote!
"color slate
set tabstop=4
set expandtab
set colorcolumn=80
"set number
augroup python
    autocmd FileType python set colorcolumn=100
    autocmd FileType python set tabstop=4
augroup END
highlight ColorColumn ctermbg=0 guibg=lightgrey
autocmd BufNewFile,BufRead Jenkinsfile set syntax=groovy
autocmd BufNewFile,BufRead Jenkinsfile set colorcolumn=100
