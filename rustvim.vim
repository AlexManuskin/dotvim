
" Run rustFmt on save
let g:rustfmt_autosave = 1

" For rust
" let g:racer_cmd = '/Users/amanusk/.cargo/bin/racer'
let $RUST_SRC_PATH="/Users/amanusk/.rustup/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/src/rust/src"
" let g:racer_experimental_completer = 1


let g:rustfmt_command = 'rustfmt'

" ALE options
" let g:ale_rust_cargo_use_check=1
let g:ale_rust_cargo_check_tests=1
let g:ale_rust_cargo_check_examples=1
"let g:ale_rust_cargo_use_clippy=executable('cargo-clippy')
let g:ale_rust_cargo_default_feature_behavior=('all')



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
