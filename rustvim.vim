
" Run rustFmt on save
let g:rustfmt_autosave = 1

" For rust
" let g:racer_cmd = '/Users/amanusk/.cargo/bin/racer'
let $RUST_SRC_PATH="/Users/amanusk/.rustup/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/src/rust/src"
" let g:racer_experimental_completer = 1

"
" autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.vi
" autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!
 

let g:rustfmt_command = 'rustfmt'

" ALE options
" let g:ale_rust_cargo_use_check=1
let g:ale_rust_cargo_check_tests=1
let g:ale_rust_cargo_check_examples=1
"let g:ale_rust_cargo_use_clippy=executable('cargo-clippy')
let g:ale_rust_cargo_default_feature_behavior=('all')

" Required for operations modifying multiple buffers like rename.
set hidden

" Which version of rls to run
let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ }

" Use completing with rls
set completefunc=LanguageClient#complete
function LC_maps()
  if has_key(g:LanguageClient_serverCommands, &filetype)
    nnoremap <silent> gc :call LanguageClient#textDocument_hover()<CR>
    nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
    nnoremap <silent> gr :call LanguageClient#textDocument_rename()<CR>
  endif
endfunction

autocmd FileType * call LC_maps()

" For racer -- deprecated
" au FileType rust nmap <leader> gd <Plug>(rust-def)
" au FileType rust nmap gs <Plug>(rust-def-split)
" au FileType rust nmap gx <Plug>(rust-def-vertical)
" au FileType rust nmap <leader>gc <Plug>(rust-doc)


" Client server for other languages
" \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
" \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
" \ 'python': ['/usr/local/bin/pyls'],
" \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
