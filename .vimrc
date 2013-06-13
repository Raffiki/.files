" Requires for 256 colors in OS X iTerm(2)
set t_Co=256


" Pathogen for easy bundle inclusion
call pathogen#infect()

filetype plugin indent on
:filetype plugin on

" Omni completion
"set ofu=syntaxcomplete#Complete
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"function! Tab_Or_Complete()
"  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
"    return "\<C-N>"
"  else
"    return "\<Tab>"
"  endif
"endfunction
"inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>


" --------------------------------------------------------- COLOR ----------
set background=dark
colorscheme solarized
"let g:solarized_termcolors=256

" Don’t add empty newlines at the end of files
set noeol

" --------------------------------------------------------- STATUS BAR ----------
set laststatus=2
set statusline=%F\ %m\ %{fugitive#statusline()}\ %y%=%l,%c\ %P

" Warn on syntax errors
"set statusline+=%#warningmsg#%{SyntasticStatuslineFlag()}%*

" Warn if fileformat isn't Unix
set statusline+=%#warningmsg#%{&ff!='unix'?'['.&ff.']':''}%*

" Warn if file encoding isn't UTF-8
set statusline+=%#warningmsg#%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}%*

" Warn if paste is enabled
set statusline+=%#warningmsg#%{&paste?'[paste]':''}%*

set relativenumber


" -------------------------------------------------------- Tabs vs. spaces ---
" spaces instead of tabs
set expandtab
" 4 spaces for each tab
set tabstop=4
" 4 spaces for each indention
set shiftwidth=4


"  --------------------------------------------------------- CTAGS ----------
" exlude node_modules directory
map <F11> :!/usr/bin/ctags -R --exclude=node_modules --fields=+iaS --extra=+q .<CR>
" map tagbartoggle
nmap <F10> :TagbarToggle<CR>

" map escape to double i
inoremap ii <ESC>


" ---------------------------------------------------------- Jslint
hi clear SpellBad
hi SpellBad cterm=underline,bold ctermfg=magenta

" Enable syntax highlighting
syntax enable


set nocompatible
