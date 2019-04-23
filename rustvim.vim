
" Run rustFmt on save
let g:rustfmt_autosave = 1

" For rust
let g:racer_cmd = "/home/amanusk/.cargo/bin/racer"
let $RUST_SRC_PATH="/home/amanusk/rust/rust/src"
let g:racer_experimental_completer = 1

" autocmd FileType rust let g:syntastic_rust_checkers = ['cargo']
" let g:syntastic_rust_checkers = ['clippy', 'cargo']
" let g:syntastic_rust_checkers = ['rustc']
"
"
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.vi
autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!


au FileType rust nmap <leader> gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gc <Plug>(rust-doc)

let g:rustfmt_command = 'rustfmt'
