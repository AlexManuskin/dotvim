" Read-only pdf through pdftotext
autocmd BufReadPre *.pdf silent set ro
autocmd BufReadPost *.pdf silent %!pdftotext -nopgbrk -layout -q -eol unix "%" - | fmt -w78

" Read-only .doc through antiword
autocmd BufReadPre *.doc silent set ro
autocmd BufReadPost *.doc silent %!antiword "%"

" Open word files with pandoc
autocmd BufReadPre *.docx silent set ro
autocmd BufEnter *.docx silent set modifiable
autocmd BufEnter *.docx silent  %!pandoc --columns=78 -f docx -t markdown "%"

" Open odt files with pandoc
autocmd BufReadPre *.odt silent set ro
autocmd BufEnter *.odt silent  %!pandoc --columns=78 -f odt -t markdown "%"
