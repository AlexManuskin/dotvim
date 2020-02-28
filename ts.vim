let g:tsuquyomi_completion_detail = 1

let g:ale_javascript_prettier_options = "--config $HOME/.prettierc"

" Disable indenter
let g:typescript_indent_disable = 1

" hints
set ballooneval
" autocmd FileType typescript setlocal balloonexpr=tsuquyomi#balloonexpr()
autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>


autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript

autocmd FileType typescript setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType typescript setlocal autoindent
autocmd FileType typescript setlocal cindent
autocmd FileType typescript setlocal smartindent
