" Excute pathiogen
execute pathogen#infect()
call pathogen#helptags()

"set term=nxterm

" Set tab stop - how many columns a tab counts for. Linux kernel code expects each tab to be eight columns wide. Visual Studio expects each tab to be four columns wide. This is the only command here that will affect how existing text displays
" Set soft tab stop - how many columns vim uses when you hit Tab in insert mode. If softtabstop is less than tabstop and expandtab is not set, vim will use a combination of tabs and spaces to make up the desired spacing. If softtabstop equals tabstop and expandtab is not set, vim will always use tabs. When expandtab is set, vim will always use the appropriate number of spaces
" Set tab indentation - how many columns text is indented with the reindent operations (<< and >>) and automatic C-style indentation
" Set no expand tab - when expandtab is set, hitting Tab in insert mode will produce the appropriate number of spaces
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab

" add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Indent following lines to the indentation of previous line.
set autoindent

" set indentation
set cindent

" Display when in Insert, Append or Replace mode on the bottom side
set showmode

" Show line numbers on right side of each line
set number

" Display line and column numbers in bottom right side
set ruler

" filetype
filetype plugin indent on

set nocompatible
set backspace=2
set foldmethod=marker

" Use 256 colours (Use this setting only if your terminal supports 256
" colours)
set t_Co=256

" set color sheme
colorscheme default
" colorscheme monokai
set background=light

" Hide the mouse when typing text
set mousehide

" Ebanle mouse
set mouse=a
set ttymouse=xterm

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>


" Switch on syntax highlighting if it wasn't on yet.
if !exists("syntax_on")
	syntax on
endif

" Switch on search pattern highlighting.
set hlsearch

" Set font
"set gfn=Courier\ 10\ Pitch\ 12
"set gfn=Courier\ 10\ Pitch\ 10

""""""""""""""""" Tlist
" Open the taglist window when Vim starts.
"autocmd VimEnter * Tlist " instead of let Tlist_Auto_Open=1
" Place the taglist window on the right side.
let Tlist_Use_Right_Window=1
" Show tags for the current buffer only.
let Tlist_Show_One_File=1
" Open tagbar if already opened in new tab
" autocmd BufEnter * nested :call tagbar#autoopen(0)


"Tags plugin
map <F3> :TagbarToggle<CR>

"Nerd tree plugin
map <F2> :NERDTreeTabsToggle<cr>

"map F7  F8 to swich tabs
" map <F6> :tabp<cr>
" inoremap <F6> <C-o>:tabp<cr>
" map <F7> :tabn<cr>
" inoremap <F7> <C-o>:tabn<cr>

" set split to right and below instead of left and above
set splitright
set splitbelow

" toggle hidden chrachters
nmap <leader>l :set list!<CR>

" Launch white space removal
nmap _$ :call <SID>StripTrailingWhitespaces()<CR>

" remove white spaces accross the file
function! <SID>StripTrailingWhitespaces()
" save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
" Clean up: restore previous search history,
	let @/=_s
	call cursor(l, c)
endfunction"

" open files easly
map <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
map <leader>sp :sp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>vsp :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>

" run Wrap to change the wrapping to words
command! -nargs=* Wrap set wrap linebreak nolist
Wrap

" map numbers on of toggle
map <leader>nu :set nu!<CR>

" Move easyly between visual lines
map <C-j> gj
map <C-k> gk


" some iretating commands
command! Q q
command! W w
command! Wq wq
command! WQ wq
command! WA wa
command! Wa wa
command! Qa qa
command! QA qa

" noremap for arrows
" noremap <Up> <NOP>
" noremap <Down> <NOP>
" noremap <Left> <NOP>
" noremap <Right> <NOP>

"A function to toggle white spaces on and off using <F5>
"let s:hilightws = 1
"fun! ToggleSpell()
"	if s:hilightws
"		setlocal spell spelllang=en_us spell! spell?
""		2mat ErrorMsg '\%81v.'
"		ToggleWhitespace
"		let s:hilightws = 0
"    else
"		setlocal spell spelllang=en_us
"		ToggleWhitespace
"        let s:hilightws = 1
"    endif
"endfun

highlight ExtraWhitespace ctermbg=green guibg=lightgreen

" Call spell Toggle: could be handled by unimpared
" map <F4> :call ToggleSpell() <cr>

" Refresh the page
map <F5> :edit <cr>

"All kinds of addings to make word complete easier
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

if has("gui_running")
	" Turn on spell checker
	set spell

	" GUI window position and size - should be enough for 2 tabs + Tlist
	winpos 214 20
	set lines=999
	set columns=999

endif

" set vertical column to 80 characters
set colorcolumn=80

" always show statusline
set laststatus=2

" Open you vimrc from everywhere
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Source your vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
" Do not sort by name
let g:tagbar_sort = 0
" Set width to 30
let g:tagbar_width = 30


if has("autocmd")
	autocmd BufReadPost *
	\ if line("'\"") > 1 && line("'\"") <= line("$") |
	\   exe "normal! g`\"" |
	\ endif
endif

if has("autocmd")
	filetype on
	augroup my_autocmds
		autocmd!
		" Toggle insert/visual line numbers
		" autocmd InsertEnter * :set number | :set norelativenumber
		" autocmd InsertLeave * :set number | :set relativenumber
	augroup END
endif

" Run NERDTreeTabs by default
" let g:nerdtree_tabs_open_on_console_startup=1

" Set NERDTree to 30
let NERDTreeWinSize = 20


" Airline additions
" let g:airline_extensions = ['csv','whitespace']
" let g:airline#extensions#csv#column_display = 'Name'
" Do not show branch
let g:airline_section_b = ''
" Do not show encoding
let g:airline_section_y = ''

"let g:csv_no_conceal = 1
" set clipboard=unnamedplus

autocmd FileType python map <buffer> <leader>8 :call Pep8()<CR>
autocmd BufNewFile,BufRead *.cl   set syntax=cpp
autocmd BufNewFile,BufReadPost *.ino,*.pde set filetype=cpp

"let vim_markdown_preview_github=1

" :SW sudo saves the file
" (useful for handling the permission-denied error)
command! SW w !sudo tee % > /dev/null

" This is totally awesome - remap jj to escape in insert mode.  You'll never type jj anyway, so it's great!
inoremap jj <esc>
nnoremap JJJJ <nop>

" Make sure that coursor is always vertically centered on j/k moves
" set so=999

" Ignore compiled files
set wildignore=*.o,*~,*.pyc,.*.swp
if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Make sure that extra margin on left is removed
set foldcolumn=0

" Enable Ctrl-A/Ctrl-X to work on octal and hex numbers, as well as characters
set nrformats=octal,hex ",alpha

" Smart way to move between windows
" map <A-J> <C-W>j
" map <A-K> <C-W>k
" map <A-H> <C-W>h
" map <A-L> <C-W>l

" Neocomplete
source /home/amanusk/.vim/neocomp.vim
" Golang
source /home/amanusk/.vim/govim.vim
" Rust
source /home/amanusk/.vim/rustvim.vim
" Python
source /home/amanusk/.vim/pyvim.vim
" Latex
source /home/amanusk/.vim/texvim.vim
" Convert files
source /home/amanusk/.vim/convert.vim
" Grammarous
source /home/amanusk/.vim/grammer.vim
" InstantRst
source /home/amanusk/.vim/instantrt.vim

" Use for snippets
"
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-b>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" Syntactic recomended setup
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" Enable of disable syntastic: See syntastic help passive
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=5

nnoremap <leader>sc :SyntasticCheck<cr>

" Add space after comment
" let g:NERDSpaceDelims = 1

" vim-instant-markdown
let g:instant_markdown_autostart = 0

let delimitMate_autoclose = 1


" For solidity
" augroup quickfix
"   autocmd!
"   autocmd QuickFixCmdPost make nested copen
" augroup END
"
" For javascript
" autocmd FileType javascript let g:syntastic_javascript_checkers = ['jshint']

" au BufNewFile,BufRead *.vy set filetype=python
set term=screen-256color
" set term=ansi


" Table mode
function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction


inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <SID>isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'

" Help menu
inoremap <F1> <Esc>
noremap <F1> :call MapF1()<CR>

function! MapF1()
  if &buftype == "help"
    exec 'quit'
  else
    exec 'help'
  endif
endfunction

" Ale configs
let g:ale_set_balloons = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_list_window_size = 5
nmap <silent> <leader>k <Plug>(ale_previous_wrap)
nmap <silent> <leader>j <Plug>(ale_next_wrap)
let g:ale_markdown_remark_lint_options = "-u preset-lint-recommended"

let g:EditorConfig_exec_path = '/usr/bin/editorconfig'


