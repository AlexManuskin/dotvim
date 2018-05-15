" Vimtex view with zathura
let g:vimtex_view_method = 'zathura'

let g:tex_flavor = "latex"
"autocmd Filetype tex inoremap <buffer> $ $  $<esc><left>i

" Disable overfull/underfull \hbox and all package warnings
let g:vimtex_quickfix_latexlog = {
      \ 'overfull' : 0,
      \ 'underfull' : 0,
      \ 'packages' : {
      \   'default' : 0,
      \ },
      \}
