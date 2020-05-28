" Vimtex view with zathura
" let g:vimtex_view_method = 'open -a Skim'
" let g:livepreview_previewer = 'open -a Skim'
" let g:livepreview_previewer = 'zathura'

" Disable ALE and only use texvim
autocmd BufEnter *.tex ALEDisable

autocmd FileType tex nmap <buffer> <C-T> :!make %<CR>
autocmd FileType tex nmap <buffer> T :!open -a Skim %:r.pdf<CR><CR>

autocmd Filetype tex setl updatetime=1

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
